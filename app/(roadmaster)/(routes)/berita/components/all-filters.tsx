"use client";

import { useEffect, useState } from "react";
import { cn } from "@/lib/utils";
import { activeSlider, NewsType, SliderDataNews } from "@/app/(roadmaster)/types";
import AllNews from "./all-news";
import { Button } from "@/components/ui/button";
import { Sheet, SheetContent, SheetDescription, SheetHeader, SheetTitle, SheetTrigger } from "@/app/(roadmaster)/components/ui/sheet";
import { ScrollArea } from "@/app/(roadmaster)/components/ui/scroll-area";
import { SliderNews } from "@/app/(roadmaster)/components/ui/slidernews";

type SliderSheetValue = {
    slug: string;
    value: {
      min: number;
      max: number;
    };
};

interface MainProps {
  data: (NewsType)[];
  slider: (SliderDataNews)[]
  showFilters: (boolean)
};

const AllNewsandFilters: React.FC<MainProps> = ({
  data, slider, showFilters
}) => {
    const [allActiveSlider, setAllActiveSlider] = useState<activeSlider[]>([])  
    const [defaultSliderSheet, setdefaultSliderSheet] = useState<SliderSheetValue[]>([])  
    const [sheetOpenedForSlider, setSheetOpenedForSlider] = useState<boolean>(false)  
    const [reseted, setReseted] = useState<string>('false')
    const [loading, setLoading] = useState<boolean>(true)
    const [allNews, setAllNews] = useState<NewsType[]>([])


    const [sliderValue, setSliderValue] = useState<SliderDataNews[]>([])
    const [loadingSlider, setLoadingSlider] = useState<boolean>(true)

    useEffect(() => {
        const fetchDataSlider = async () => {
            try {
                let tempSlider: SliderDataNews[] = []
                slider.map((value) => {
                    tempSlider.push({
                        slug: value.slug,
                        name: value.name,
                        minIndex: value.minIndex,
                        maxIndex: value.maxIndex,
                        min_index: value.min_index,
                        max_index: value.max_index,
                        unit: value.unit,
                        value: value.value,
                        realDate: value.realDate
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


    const handleSliderChange = (slug: string, value: number[], min_index: number, max_index: number, allVal: number[], parentName: string, unit: string, index: number) => {

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


      const normalizeDate = (date: Date) =>
        new Date(date.getFullYear(), date.getMonth(), date.getDate());

      useEffect(() => {
        const fetchData = async () => {
          try {
            let finishedSliderNews: NewsType[] = []
            let tempShowed: NewsType[][] = [];
            

            if (allActiveSlider.length !== 0) {
                allActiveSlider.forEach((slider, indexslider) => {
                    if (!tempShowed[indexslider]) {
                        tempShowed[indexslider] = [];
                    }
                    if (indexslider === 0) {
                        data.forEach((product) => {
                            const productValue = normalizeDate(new Date(product.event_date));
                            const bottomValue = normalizeDate(new Date(slider.bottomRealVal));
                            const topValue = normalizeDate(new Date(slider.topRealVal));

                            if (bottomValue <= productValue && topValue >= productValue) {
                                tempShowed[indexslider].push(product);
                            }
                        });
                    } else {
                        tempShowed[indexslider - 1].forEach((product) => {
                            const productValue = normalizeDate(new Date(product.event_date));
                            const bottomValue = normalizeDate(new Date(slider.bottomRealVal));
                            const topValue = normalizeDate(new Date(slider.topRealVal));


                            if (bottomValue <= productValue && topValue >= productValue) {
                                tempShowed[indexslider].push(product);
                            }
                        });
                    }
                });
                finishedSliderNews = tempShowed[allActiveSlider.length - 1]
            } else {
                finishedSliderNews = data
            }

            let FinalFeatured: NewsType[] = []
            for (const slidernews of finishedSliderNews) {
                FinalFeatured.push(slidernews)
            }

            setAllNews(FinalFeatured)

          } catch (error) {
            console.error('Error fetching data:', error);
          }
        };
    
        fetchData();
      }, [data, allActiveSlider]); 


      useEffect(() => {
        const fetchData = () => {
          try {
            let sliderTemp: SliderSheetValue[] = []
            allActiveSlider.map((value, index) => {
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
            setLoading(false)
          } catch (error) {
            console.error('Error fetching data:', error);
          }
        };
    
        fetchData();
      }, [sheetOpenedForSlider, allActiveSlider]); 

    return ( 
        <>
        
        <div className='block lg:hidden text-center pb-4'>
                <div className='pb-4'>
                <Sheet>
                    <SheetTrigger asChild className="hover:cursor-pointer">
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
                    {!loadingSlider && Array.isArray(sliderValue) &&
                        <ScrollArea className="h-full w-full pb-8 px-2">
                        {sliderValue.map((value, index)=> 
                            value.value.length===1?
                            null
                            :
                            <div key={index} className="grid gap-2 w-full pt-2">
                                <div className="text-center font-bold text-sm text-black">
                                    {value.name}
                                </div>
                                <SliderNews
                                    value={[value.minIndex, value.maxIndex]}
                                    max={value.max_index}
                                    min={value.min_index}
                                    step={1}
                                    onValueChange={(val) => {
                                    handleSliderChange(
                                        value.slug,
                                        val,
                                        value.min_index,
                                        value.max_index,
                                        value.value,
                                        value.name,
                                        value.unit,
                                        index
                                    )
                                    }}
                                    unit={value.unit}
                                    realdatesvalues={value.realDate}
                                    className={cn("w-full py-2")}
                                />
                                <hr/>
                            </div>
                        )}
                        <div className="w-full flex justify-center pt-4">
                            <Button onClick={() => setReseted('true')} variant={"outline"} className="bg-transparent border-foreground border-4">
                                <b>Clear Filters</b>
                            </Button>
                        </div>
                    </ScrollArea>
                    }
                    </SheetContent>
                </Sheet>
                
                </div>
            </div>
            <div className="w-full flex">
            {showFilters?
                <div className="hidden lg:block py-4 pr-4 w-1/4">
                    <div className="w-full flex justify-center pb-4">
                        <Button onClick={() => setReseted('true')} variant={"outline"} className="bg-transparent border-foreground border-4 w-full">
                            <b>Clear Filters</b>
                        </Button>
                    </div>
                    {sliderValue.map((value, index)=> 
                        value.value.length===1?
                        null
                        :
                        <div key={index} className="grid gap-2 w-full max-w-80 pt-2">
                            <div className="text-center font-bold text-sm text-black">
                                {value.name}
                            </div>
                            <SliderNews
                                    value={[value.minIndex, value.maxIndex]}
                                    max={value.max_index}
                                    min={value.min_index}
                                    step={1}
                                    onValueChange={(val) => {
                                    handleSliderChange(
                                        value.slug,
                                        val,
                                        value.min_index,
                                        value.max_index,
                                        value.value,
                                        value.name,
                                        value.unit,
                                        index
                                    )
                                    }}
                                    unit={value.unit}
                                    realdatesvalues={value.realDate}
                                    className={cn("w-full py-2")}
                                />
                            <hr/>
                        </div>
                    )}
                </div>
            :
                <div className="hidden md:block pr-16"></div>
            }
            <div className="w-full">
            <AllNews allActiveSliderVal={allActiveSlider} news={data}/>
            </div>
            </div>
        </>
    );
};

export default AllNewsandFilters;
