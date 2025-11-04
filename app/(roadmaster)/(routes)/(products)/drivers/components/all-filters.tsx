"use client";

import { activeCheckbox, activeSlider, AllFilterProductsOnlyType, CheckBoxData, SliderData } from "@/app/(roadmaster)/types";
import { Slider } from "@/app/(roadmaster)/components/ui/slider";
import { cn } from "@/lib/utils";
import { Checkbox } from "@/components/ui/checkbox";
import { Sheet, SheetContent, SheetDescription, SheetHeader, SheetTitle, SheetTrigger } from "@/app/(roadmaster)/components/ui/sheet";
import { ScrollArea } from "@/app/(roadmaster)/components/ui/scroll-area";
import NoResults from "@/app/(roadmaster)/components/ui/no-results";
import ProductCard from "@/app/(roadmaster)/components/ui/product-card";
import { X } from "lucide-react";
import Link from "next/link";
import { useToast } from "@/app/(roadmaster)/components/hooks/use-toast";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { Button } from "@/components/ui/button";
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "@/app/(roadmaster)/components/ui/accordionmobilemenu";
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from "@/app/(roadmaster)/components/ui/breadcrumb";
import { LazyImage } from "@/app/(roadmaster)/components/lazyImage";
import { Fragment, useEffect, useRef, useState } from "react";
import { LazyImageCustom } from "@/app/(roadmaster)/components/lazyImageCustom";


let activeSlugCompare: string[] = [];
let activeUrlCompare: string[] = [];
let activeNameCompare: string[] = [];


type SliderSheetValue = {
    slug: string;
    value: {
      min: number;
      max: number;
    };
  };

interface MainProps {
  data: (AllFilterProductsOnlyType)[];
  slider: (SliderData)[]
  checkbox: (CheckBoxData)[]
  showFilters: (boolean)
};

const AllDriversandFiltersProducts: React.FC<MainProps> = ({
  data, slider, checkbox, showFilters
}) => {
    const searchParams = useSearchParams();
    const router = useRouter();
    const maxCompare = 5
    const [allActiveSlider, setAllActiveSlider] = useState<activeSlider[]>([])  
    const [allActiveCheckbox, setAllActiveCheckbox] = useState<activeCheckbox[]>([])  
    const [defaultSliderSheet, setdefaultSliderSheet] = useState<SliderSheetValue[]>([])  
    const [sheetOpenedForSlider, setSheetOpenedForSlider] = useState<boolean>(false)  
    const [reseted, setReseted] = useState<string>('false')
    const [isLgScreen, setIsLgScreen] = useState(false);

    const [SelectedSlugComparison, setSelectedSlugComparison] = useState<string>();
    const [SelectedUrlComparison, setSelectedUrlComparison] = useState<string>();
    const [SelectedNameComparison, setSelectedNameComparison] = useState<string>();
    const [allFeaturedProducts, setAllFeaturedProducts] = useState<AllFilterProductsOnlyType[]>([])

    const { toast } = useToast()
    const [url, setUrl] = useState<string>('')
    const buttonRef = useRef<HTMLDivElement | null>(null);
    const comparisonListRef = useRef<HTMLDivElement | null>(null);
    const pathname = usePathname()
    const segmentedPathname = pathname.split(('/'))
    // console.log(segmentedPathname)
    // console.log("allFeaturedProducts: ", allFeaturedProducts)
    const [sliderValue, setSliderValue] = useState<SliderData[]>([])
    const [loadingSlider, setLoadingSlider] = useState<boolean>(true)

    useEffect(() => {
        const fetchDataSlider = async () => {
            try {
                let tempSlider: SliderData[] = []
                slider.map((value) => {
                    tempSlider.push({
                        slug: value.slug,
                        name: value.name,
                        minIndex: value.minIndex,
                        maxIndex: value.maxIndex,
                        min_index: value.min_index,
                        max_index: value.max_index,
                        unit: value.unit,
                        value: value.value
                    })
                });
                // console.log("tempSlider: ", tempSlider)
                setSliderValue(tempSlider)
                setLoadingSlider(false);
            } catch (error) {
                console.error('Error fetching data:', error);
            }
        };
        fetchDataSlider();
    }, []);
    
    useEffect(() => {
        if (reseted === 'true') {
            setAllActiveCheckbox([]);
            setAllActiveSlider([]);
          
            let tempslider = sliderValue
            tempslider.map((value) => {
                value.minIndex = value.min_index
                value.maxIndex = value.max_index
            })
            setSliderValue(tempslider)

            setReseted('false');
        }
    }, [reseted]);

    useEffect(() => {
        const filter = searchParams.get('reset');
        if (filter === 'true') {
            activeSlugCompare = [];
            activeUrlCompare = [];
            activeNameCompare = [];
            router.replace('/drivers');
        }
    }, [searchParams, router]);

    useEffect(() => {
        const mediaQuery = window.matchMedia('(min-width: 1024px)');
        const handleResize = (e: MediaQueryListEvent) => {
          setIsLgScreen(e.matches);
        //   setAllActiveSlider(allActiveSlider)
          setSheetOpenedForSlider(true)
        };
    
        // Set initial value
        setIsLgScreen(mediaQuery.matches);
    
        // Add event listener
        mediaQuery.addEventListener('change', handleResize);
    
        // Cleanup listener on unmount
        return () => {
          mediaQuery.removeEventListener('change', handleResize);
        };
    }, [allActiveSlider]);

    useEffect(() => {
        const fetchData = () => {
            try {
                let sliderTemp: SliderSheetValue[] = []
                allActiveSlider.map((value) => {
                    sliderTemp.push({
                        slug: value.slug,
                        value:{
                            min: value.bottomVal,
                            max: value.topVal
                        }
                    })
                })
                setdefaultSliderSheet(sliderTemp)
                setSheetOpenedForSlider(false)
            } catch (error) {
                console.error('Error fetching data:', error);
            }
        };

        fetchData();
    }, [sheetOpenedForSlider, allActiveSlider]); 

    useEffect(() => {
        const fetchData = async () => {
          try {
            let finishedSliderProducts: AllFilterProductsOnlyType[] = []
            let finishedCheckboxProducts: AllFilterProductsOnlyType[] = []
            let tempShowed: AllFilterProductsOnlyType[][] = [];
            if (allActiveSlider.length !== 0) {
                allActiveSlider.forEach((slider, indexslider) => {
                    if (!tempShowed[indexslider]) {
                        tempShowed[indexslider] = [];
                    }
                    if (indexslider === 0) {
                        data.forEach((product) => {
                            let productValue = 0
                            productValue = Number(product.specs.find((val) => val.slug === slider.slug)?.value);
                            const bottomValue = Number(slider.bottomRealVal);
                            const topValue = Number(slider.topRealVal);
            
                            if (bottomValue <= productValue && topValue >= productValue) {
                                tempShowed[indexslider].push(product);
                            }
                        });
                    } else {
                        tempShowed[indexslider - 1].forEach((product) => {
                            let productValue = 0
                            productValue = Number(product.specs.find((val) => val.slug === slider.slug)?.value);
                            const bottomValue = Number(slider.bottomRealVal);
                            const topValue = Number(slider.topRealVal);
            
                            if (bottomValue <= productValue && topValue >= productValue) {
                                tempShowed[indexslider].push(product);
                            }
                        });
                    }
                });
                finishedSliderProducts = tempShowed[allActiveSlider.length - 1]
            } else {
                finishedSliderProducts = data
            }

            if (allActiveCheckbox.length !== 0) {
                let finalTempProduct: Record<string, AllFilterProductsOnlyType[]> = {};
                let checkboxCategories: string[] = [];

                allActiveCheckbox.forEach((checkbox) => {
                    const category = checkbox.slug;
                    !checkboxCategories.includes(category)?
                        checkboxCategories.push(category)
                    :
                        null

                    if (!finalTempProduct[category]) {
                        finalTempProduct[category] = [];
                    }

                    data.forEach((product) => {
                        // let productValue = ''
                        // if(checkbox.slug === 'series' && product.specs.length > 0){
                        //     productValue = product.specs.find((val) => val.slug === checkbox.slug)?.value ?? ''
                        // }
                        // else{
                        //     if(product.sub_sub_categories.length > 0){ 
                        //         productValue = product.sub_sub_categories[0].name ?? ''
                        //     }
                        // }
                        
                        const productValue = product.specs.find((val) => val.slug === checkbox.slug)?.value;
                        const checkboxValue = checkbox.name;

                        if (productValue === checkboxValue) {
                            const productExists = finalTempProduct[category].some(item => item.products.name === product.products.name);

                            if (!productExists) {
                                finalTempProduct[category].push(product);
                            }
                        }
                    });
                });

                let tempFinished: AllFilterProductsOnlyType[] = [];
                let productCountMap = new Map<string, number>();

                checkboxCategories.map((category, indexcategory) => {
                    finalTempProduct[category].map((product) => {
                        tempFinished.push(product);
                        const count = productCountMap.get(product.products.name) || 0;
                        productCountMap.set(product.products.name, count + 1);
                    });
                });

                productCountMap.forEach((count, productName) => {
                    if (count === checkboxCategories.length) {
                        const product = tempFinished.find(p => p.products.name === productName);
                        if (product) {
                            finishedCheckboxProducts.push(product);
                        }
                    }
                });
            }
            else{
                finishedCheckboxProducts = data
            }

            let FinalFeatured: AllFilterProductsOnlyType[] = []
            for (const checkboxproducts of finishedCheckboxProducts) {
                for (const sliderproducts of finishedSliderProducts) {
                    if(checkboxproducts.products.name === sliderproducts.products.name){
                        FinalFeatured.push(sliderproducts)
                        break
                    }
                }
            }
            FinalFeatured.sort((a, b) => a.products.name.localeCompare(b.products.name));

            setAllFeaturedProducts(FinalFeatured)

          } catch (error) {
            console.error('Error fetching data:', error);
          }
        };
    
        fetchData();
      }, [data, allActiveSlider, allActiveCheckbox]); 

    useEffect(() => {
        if (!activeSlugCompare.includes(SelectedSlugComparison!) && SelectedSlugComparison !== undefined && SelectedSlugComparison !== "") {
            activeSlugCompare.push(SelectedSlugComparison);
            activeNameCompare.push(SelectedNameComparison!);
            activeUrlCompare.push(SelectedUrlComparison!)
        }

        let tempUrl = ''
        activeSlugCompare.forEach((value) => {
            tempUrl = tempUrl.concat(value, ",");
        });
        setUrl(tempUrl);
    }, [SelectedSlugComparison, SelectedNameComparison, SelectedUrlComparison]);

    useEffect(() => {
        const tempUrl = activeSlugCompare.join(',');
        setUrl(tempUrl.concat(','));
    }, [SelectedSlugComparison, SelectedNameComparison, SelectedUrlComparison]);

    useEffect(() => {
        const handleClickOutside = (event: MouseEvent) => {
            if (
                buttonRef.current && !buttonRef.current.contains(event.target as Node) &&
                comparisonListRef.current && !comparisonListRef.current.contains(event.target as Node)
            ) {
            }
        };

        document.addEventListener("mousedown", handleClickOutside); // Listen for clicks outside

        return () => {
        document.removeEventListener("mousedown", handleClickOutside); // Clean up the event listener
        };
    }, []);





    const handleSliderChange = (slug: string, value: number[], min_index: number, max_index: number, allVal: number[], parentName: string, unit: string, index: number) => {
        // setSliderValue((prev) => ({
        // ...prev,
        // minIndex: value[0],
        // maxIndex: value[1],
        // }))
        let tempslider = sliderValue
        tempslider[index].minIndex = value[0]
        tempslider[index].maxIndex = value[1]
        setSliderValue(tempslider)

        let tempactiveSlider : activeSlider[] = []
        let sliderisActive : boolean = false
        if(allActiveSlider.length!= 0){
          allActiveSlider.map((valueactiveSlider) => {
            if(valueactiveSlider.slug === slug){
                sliderisActive = true
                if(value[0] === min_index && value[1] === max_index){

                }
                else if(value[0] !== min_index || value[1] !== max_index){
                    tempactiveSlider.push({
                    slug,
                    bottomVal: value[0],
                    topVal: value[1],
                    bottomRealVal: allVal[value[0]],
                    topRealVal: allVal[value[1]],
                    parentName,
                    unit
                    })
                }
            }
            else{
              tempactiveSlider.push(valueactiveSlider)
            }
          })
        }
        else{
            sliderisActive = true
            if(value[0] !== min_index || value[1] !== max_index){
                tempactiveSlider.push({
                slug,
                bottomVal: value[0],
                topVal: value[1],
                bottomRealVal: allVal[value[0]],
                topRealVal: allVal[value[1]],
                parentName,
                unit
                })
            }
        }
        if(!sliderisActive){
            tempactiveSlider.push({
                slug,
                bottomVal: value[0],
                topVal: value[1],
                bottomRealVal: allVal[value[0]],
                topRealVal: allVal[value[1]],
                parentName,
                unit
            })
        }
        setAllActiveSlider(tempactiveSlider)
      };


    const handleCheckboxChange = (slug: string, name: string, unit: string, parentName: string) => {
        if(name!==''){
            let tempactiveCheckbox: activeCheckbox[] = [...allActiveCheckbox];
            const index = tempactiveCheckbox.findIndex(item => item.name === name);
        
            if (index !== -1) {
                tempactiveCheckbox.splice(index, 1);
            } else {
                let temp: activeCheckbox = {
                    slug,
                    name,
                    unit,
                    parentName
                };
                tempactiveCheckbox.push(temp);
            }
        
            setAllActiveCheckbox(tempactiveCheckbox);
        }
    };


    function addComparison(slug: string, name: string, url: string){
        setSelectedSlugComparison(slug)
        setSelectedNameComparison(name)
        setSelectedUrlComparison(url)
    }  

    function deleteComparison(slug: string) {
        let tempslug: string[] = []
        let tempname: string[] = []
        let tempUrlImage: string[] = []
        let tempUrl: string = ''
        activeSlugCompare.map((value, index) => {
        if (value !== slug && value != '') {
            tempslug.push(activeSlugCompare[index])
            tempname.push(activeNameCompare[index])
            tempUrlImage.push(activeUrlCompare[index])
            tempUrl = tempUrl.concat(value, ",");
        } else {
            if (activeSlugCompare.length === 1) {
            tempname = []
            tempslug = []
            tempUrlImage = []
            }
        }
        });
        activeSlugCompare = tempslug;
        activeNameCompare = tempname;
        activeUrlCompare = tempUrlImage
        setUrl(tempUrl);
        setSelectedSlugComparison("")
        setSelectedNameComparison("")
        setSelectedUrlComparison("")
    }




    





    return ( 
        <>


        {/* FLOATING ACTION BUTTON UNTUK PERBANDINGAN  */}
            <div
                className={`fixed bottom-4 right-4 z-40 transform duration-700 ${
                    activeSlugCompare.length === 0 ? 'translate-y-56' : 'translate-y-0'
                }`}
            >
                    <Accordion type="single" collapsible={true} className="w-full shadow-lg ">
                        <AccordionItem value="item-1">
                        <AccordionTrigger className="bg-[#3B3F8C] flex px-4 rounded-lg text-white font-semibold">
                        <div className="pr-2">LIST PERBANDINGAN ({activeSlugCompare.length})</div>
                    </AccordionTrigger>
                    <AccordionContent className="bg-white p-4 rounded-lg border">
                        <>
                            {activeSlugCompare.map((slug, index) => (
                <div
                key={slug}
                className="relative flex justify-between items-center py-2 h-14 w-full"
              >
                <div className="pr-2">
                    <div className="items-center justify-center text-center">
                        <LazyImageCustom
                            src={activeUrlCompare[index].startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${activeUrlCompare[index]}` : activeUrlCompare[index]}
                            width={50}
                            height={50}
                            alt={activeNameCompare[index]}
                            classname="max-h-12 max-w-full object-contain"
                        />
                    </div>
                </div>
                <span className="text-sm text-black truncate">
                  {activeNameCompare[index]}
                </span>
                <Button
                  variant="ghost"
                  size="sm"
                  className="hover:bg-transparent hover:text-red-700 text-white"
                  onClick={() => deleteComparison(slug)}
                  aria-label={`Remove ${activeNameCompare[index]} from comparison`}
                >
                  <X size={20} className="bg-red-500 rounded-sm" />
                </Button>
              </div>
              
                            ))}
                            <div className="w-full flex justify-center">
                                <Button
                                    variant="default"
                                    className="bg-secondary border-foreground border-2 w-full"
                                    asChild
                                >
                                    <Link href={`/comparison/${url}`}> 
                                        <b>HASIL PERBANDINGAN</b>
                                    </Link>
                                </Button>
                            </div>
                        </>
                    </AccordionContent>
                </AccordionItem>
            </Accordion>
        </div>

        <div className="pb-6">
                <Breadcrumb>
                    <BreadcrumbList>
                        {segmentedPathname.map((value, index) =>
                        index !== segmentedPathname.length - 1?
                            <Fragment key={index}>
                                <BreadcrumbItem>
                                    <BreadcrumbLink href={index === 0 ? `/` : index === 1?  `/`.concat(value) : `/`.concat(segmentedPathname[1],'/',value) }>{index===0?'Home' : value.charAt(0).toUpperCase() + value.slice(1)}</BreadcrumbLink>
                                </BreadcrumbItem>
                                <BreadcrumbSeparator />
                            </Fragment>
                            :
                            <Fragment key={index}>
                                <BreadcrumbItem>
                                    <BreadcrumbPage>{value.charAt(0).toUpperCase() + value.slice(1)}</BreadcrumbPage>
                                </BreadcrumbItem>
                            </Fragment>
                        )}
                    </BreadcrumbList>
                </Breadcrumb>
            </div>

        <div className='block lg:hidden text-center pb-4'>
            {/* TOMBOL MOBILE UNTUK FILTERS & PERBANDINGAN */}
            <div className='pb-4'>
                <Sheet open={isLgScreen?false:undefined}>
                    <SheetTrigger asChild className="hover:cursor-pointer" onClick={() => setSheetOpenedForSlider(true)}>
                    <div className="w-full text-center font-bold text-lg bg-transparent p-2 rounded-lg text-foreground border-foreground border-4 hover:shadow-lg">
                       Edit Filters
                    </div>
                    </SheetTrigger>
                    <SheetContent side={'left'} className="w-full max-w-[300px] sm:max-w-[300px] bg-white">
                    <SheetTitle/>
                    <SheetDescription/>
                    <SheetHeader>
                        <div className="text-lg lg:text-xl font-bold text-center pb-4 text-black">
                            FILTERS 
                        </div>
                    </SheetHeader>
                        <ScrollArea className="h-full w-full pb-8 px-2">
                            <div className="w-full px-2">
                                {checkbox.map((valueCheckbox, index) =>
                                valueCheckbox.value.length === 1 ? null : (
                                    <div key={index} className="grid gap-2 w-full pt-2">
                                    <div className="text-center font-bold text-sm text-black">{valueCheckbox.name}</div>
                                    {valueCheckbox.value.map((choicesVal, indexChoices) => (
                                        <div key={indexChoices} className="flex items-center">
                                        <div className="pr-2">
                                            <Checkbox
                                            id={choicesVal}
                                            checked={allActiveCheckbox.some((item) => item.name === choicesVal)}
                                            onClick={() => handleCheckboxChange(valueCheckbox.slug, choicesVal, valueCheckbox.unit, valueCheckbox.name)}
                                            />
                                        </div>
                                        <label htmlFor={choicesVal} className="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-black">
                                        {
                                            choicesVal === 'Legacy' ? 
                                            <div className="w-full h-fit px-6">
                                                <LazyImage
                                                    alt="Legacy Series Logo"
                                                    src={'/images/roadmaster/legacy_logo.webp'}
                                                    width={500}
                                                    height={500}
                                                />
                                            </div>
                                        :
                                            choicesVal === 'Energy' ?
                                            <div className="w-full h-fit">
                                                <LazyImage
                                                    alt="Energy Series Logo"
                                                    src={'/images/roadmaster/energy_logo.webp'}
                                                    width={500}
                                                    height={500}
                                                />
                                            </div>
                                        :
                                            choicesVal === 'Prestige' ?
                                            <div className="w-full h-fit px-6 py-4">
                                                <LazyImage
                                                    alt="Prestige Series Logo"
                                                    src={'/images/roadmaster/prestige_logo.webp'}
                                                    width={500}
                                                    height={500}
                                                />
                                                {/* <Image
                                                    alt="Prestige Series Logo"
                                                    src={'/images/roadmaster/prestige_logo.webp'}
                                                    width={500}
                                                    height={500}
                                                    className="w-full h-fit px-6 py-4"
                                                    priority
                                                /> */}
                                            </div>
                                        :
                                            choicesVal === 'Sparta' ?
                                            <div className="w-full h-fit">
                                                <LazyImage
                                                    alt="Sparta Series Logo"
                                                    src={'/images/roadmaster/sparta_logo.webp'}
                                                    width={500}
                                                    height={500}
                                                />
                                            </div>
                                        :   
                                            <>
                                            {choicesVal} {valueCheckbox.unit}
                                            </>
                                        }
                                        </label>
                                        </div>
                                    ))}
                                    <hr />
                                    </div>
                                )
                                )}
                                {sliderValue.map((value, index) =>
                                value.value.length === 1 ? null : (
                                <div key={index} className="grid gap-2 w-full pt-2">
                                <div className="text-center font-bold text-sm text-black">
                                    {value.name}
                                </div>
                                <Slider
                                    value={[value.minIndex, value.maxIndex]}
                                    max={value.max_index}
                                    min={value.min_index}
                                    step={1}
                                    onValueChange={(val) => {
                                    handleSliderChange(value.slug, val, value.min_index, value.max_index, value.value, value.name, value.unit, index)
                                    }}
                                    unit={value.unit}
                                    dataArray={value.value}
                                    className={cn("w-full py-2")}
                                />
                                <hr/>
                            </div>
                                )
                                )}
                                <div className="w-full flex justify-center pt-4">
                                    <Button onClick={() => setReseted('true')} variant={"outline"} className="bg-transparent border-foreground border-4">
                                        <b>Clear Filters</b>
                                    </Button>
                                </div>
                            </div>
                        </ScrollArea>
                    </SheetContent>
                </Sheet>
                </div>

            </div>
            <div className="flex">
            {showFilters?
            <>
                <div className="hidden lg:block py-4 pr-4 w-1/4">
                    <div className="w-full flex justify-center pb-4">
                        <Button onClick={() => setReseted('true')} variant={"outline"} className="bg-transparent border-foreground border-4 w-full">
                            <b>Clear Filters</b>
                        </Button>
                    </div>
                    {checkbox.map((valueCheckbox, index) =>
                    valueCheckbox.value.length === 1 ? null : (
                        <div key={index} className="grid gap-2 w-full max-w-80 pt-2">
                        <div className="text-center font-bold text-sm text-black">{valueCheckbox.name}</div>
                        {valueCheckbox.value.map((choicesVal, indexChoices) => (
                            <div key={indexChoices} className="flex items-center">
                            <div className="pr-2">
                                <Checkbox
                                id={choicesVal}
                                checked={allActiveCheckbox.some((item) => item.name === choicesVal)}
                                onClick={() => handleCheckboxChange(valueCheckbox.slug, choicesVal, valueCheckbox.unit, valueCheckbox.name)}
                                />
                            </div>
                            <label htmlFor={choicesVal} className="text-center text-sm text-black">
                                {
                                    choicesVal === 'Legacy' ? 
                                    <div className="w-full h-fit px-6">
                                        <LazyImage
                                            alt="Legacy Series Logo"
                                            src={'/images/roadmaster/legacy_logo.webp'}
                                            width={500}
                                            height={500}
                                        />
                                    </div>
                                :
                                    choicesVal === 'Energy' ?
                                    <div className="w-full h-fit">
                                        <LazyImage
                                            alt="Energy Series Logo"
                                            src={'/images/roadmaster/energy_logo.webp'}
                                            width={500}
                                            height={500}
                                        />
                                    </div>
                                :
                                    choicesVal === 'Prestige' ?
                                    <div className="w-full h-fit px-6 py-4">
                                        <LazyImage
                                            alt="Prestige Series Logo"
                                            src={'/images/roadmaster/prestige_logo.webp'}
                                            width={500}
                                            height={500}
                                        />
                                        {/* <Image
                                            alt="Prestige Series Logo"
                                            src={'/images/roadmaster/prestige_logo.webp'}
                                            width={500}
                                            height={500}
                                            className="w-full h-fit px-6 py-4"
                                            priority
                                        /> */}
                                    </div>
                                :
                                    choicesVal === 'Sparta' ?
                                    <div className="w-full h-fit">
                                        <LazyImage
                                            alt="Sparta Series Logo"
                                            src={'/images/roadmaster/sparta_logo.webp'}
                                            width={500}
                                            height={500}
                                        />
                                    </div>
                                :   
                                    <>
                                    {choicesVal} {valueCheckbox.unit}
                                    </>
                                }
                                
                            </label>
                            </div>
                        ))}
                        <hr />
                        </div>
                    )
                    )}
                    {sliderValue.map((value, index)=> 
                        value.value.length===1?
                        null
                        :
                        <div key={index} className="grid gap-2 w-full pt-2">
                            <div className="text-center font-bold text-sm text-black">
                                {value.name}
                            </div>
                            <Slider
                                value={[value.minIndex, value.maxIndex]}
                                max={value.max_index}
                                min={value.min_index}
                                step={1}
                                onValueChange={(val) => {
                                handleSliderChange(value.slug, val, value.min_index, value.max_index, value.value, value.name, value.unit, index)
                                }}
                                unit={value.unit}
                                dataArray={value.value}
                                className={cn("w-full py-2")}
                            />
                            <hr/>
                        </div>
                    )}
                    {/* {activeSlugCompare.length > 0 && activeSlugCompare[0] !='' && (
                        <>
                            <div className="font-bold text-lg text-center text-black pt-4">
                                PERBANDINGAN PRODUK
                            </div>
                            {activeSlugCompare.map((slug, index) => (
                                <div
                                    key={slug}
                                    className="flex justify-between items-center py-2 "
                                >
                                    <Image src={activeUrlCompare[index]}
                                        width={100}
                                        height={100}
                                        className="h-[70px] w-fit"
                                        alt={activeNameCompare[index]}
                                    />
                                    <span className="text-base text-black truncate">
                                        {activeNameCompare[index]}
                                    </span>
                                    <Button
                                        variant="ghost"
                                        size="sm"
                                        className="hover:bg-transparent"
                                        onClick={() => deleteComparison(slug)}
                                        aria-label={`Remove ${activeNameCompare[index]} from comparison`}
                                    >
                                        <X size={20} className="bg-red-500 rounded-sm"/>
                                    </Button>
                                </div>
                            ))}
                            <div className="w-full flex justify-center">
                                <Button
                                    variant="default"
                                    className="bg-secondary border-foreground border-2 w-full"
                                    asChild
                                >
                                    <Link href={`/comparison/${url}`}> 
                                        <b>HASIL PERBANDINGAN</b>
                                    </Link>
                                </Button>
                            </div>
                        </>
                    )} */}
                </div>
            </>
            :
                <div className="hidden md:block pr-16"></div>
            }
            {allFeaturedProducts.length === 0 ?        
                <div className="w-full">
                    <NoResults />
                </div>
            :
                <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-2 xl:grid-cols-3 w-full">
                    {allFeaturedProducts.map((item: AllFilterProductsOnlyType, i) => (
                        <div key={i} className="pt-4 pb-12">
                            <ProductCard key={item.products.id} data={item}/>
                            <div className="w-full flex justify-center pb-2">
                                <Button                                            
                                variant="default"
                                className="bg-secondary border-foreground border-4 sm:w-2/3 w-screen"
                                asChild
                                >
                                    <Link href={`/products/${item.products.slug}`}>
                                        <b>DETAIL</b>
                                    </Link>
                                </Button>
                            </div>
                            {!activeSlugCompare.includes(item.products.slug) ?  
                                <div className="w-full flex justify-center pb-4">
                                    <Button
                                        onClick={() => 
                                            activeSlugCompare.length < maxCompare?
                                                addComparison(item.products.slug, item.products.name, item.products.cover_img.url)
                                            :
                                                toast({
                                                    title: "Tabel Perbandingan Full!",
                                                    description: "Total tidak lebih dari 5",
                                                    className: "border-none"
                                                })
                                            }
                                            
                                        variant="outline"
                                        className="bg-transparent border-foreground border-4 sm:w-2/3 w-screen"
                                    >
                                        <b>BANDINGKAN</b>
                                    </Button>
                                </div>
                                :
                                <>
                                    <div className="w-full flex justify-center pb-4 gap-3">
                                        <Button
                                            disabled
                                            className="bg-secondary/70 sm:w-2/3 w-screen"
                                            
                                        >
                                                {/* <Check size={25} className="pr-2" strokeWidth={3}/> */}
                                                <b>PERBANDINGAN</b>
                                        </Button>
                                        {/* <Button variant="destructive" size="icon" onClick={() => deleteComparison(item.slug)}>
                                            <X size={25} />
                                        </Button> */}
                                    </div>
                                </>
                            }
                        </div>
                    ))}
                </div>
            }
            </div>
        </>
    );
};

export default AllDriversandFiltersProducts;
