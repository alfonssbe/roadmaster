"use client"

import { SingleProducts } from '@/app/(roadmaster)/types';
import React, { useEffect, useState, use } from 'react';
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
  } from '@/components/ui/table';
import { Separator } from '@/components/ui/separator';
import { Button } from '@/components/ui/button';
import Link from 'next/link';
import { Plus } from 'lucide-react';
import { ScrollArea, ScrollBar } from '@/app/(roadmaster)/components/ui/scroll-area';
import { useRouter } from 'next/navigation';
import { LazyImage } from '@/app/(roadmaster)/components/lazyImage';
import FullScreenLoader from '@/app/(roadmaster)/components/loadingNoScroll';
import getProduct from '@/app/(roadmaster)/actions/get-one-product';

function createData(
    name: string,
    attribute: string,
    unit: string,
) {
    return { name, attribute, unit };
}

function groupAllSpecifications(products: SingleProducts[]) {
  const grouped: Record<string, Record<string, Record<string, string>>> = {};

  products.forEach((product) => {
    product.specification.forEach((spec) => {
      const parent = spec.parentname;
      const sub = spec.subparentname || "";

      if (!grouped[parent]) grouped[parent] = {};
      if (!grouped[parent][sub]) grouped[parent][sub] = {};

      spec.child.map((child) => {
        if (!grouped[parent][sub][child.childname]) {
          grouped[parent][sub][child.childname] = child.childname;
        }
      });
    });
  });

  return grouped;
}

const ProductBySubCategoryPage = (
    props: {
      params: Promise<{ productSlugs: string }>
    }
) => {
    const params = use(props.params);
    const [finalFetchedProducts, setFinalFetchedProducts] = useState<SingleProducts[]>([])
    const router = useRouter()
    const [allDriversName, setAllDriversName] = useState<string>('')
    const [loading, setLoading] = useState<boolean>(true)
    const [allSpecsUsed, setAllSpecsUsed] = useState<Record<string, Record<string, Record<string, string>>>>({});
    
     useEffect(() => {
        const fetchData = async () => {
            try {
                document.body.style.overflow = 'hidden';
                let fetchedProducts: SingleProducts[] = []
                let tempAllName: string = ''
                const decodedSlugs = decodeURIComponent(params.productSlugs);
                const slugArray = decodedSlugs.split(',');
                slugArray.pop()
                await Promise.all(
                    slugArray.map(async (value) => {
                        let temp: SingleProducts = await getProduct(value);
                        fetchedProducts.push(temp);
                        tempAllName = tempAllName === "" ? temp.name : `${tempAllName}, ${temp.name}`;
                    })
                );
                setFinalFetchedProducts(fetchedProducts)
                setAllSpecsUsed(groupAllSpecifications(fetchedProducts))
                setAllDriversName(tempAllName);
                
                document.body.style.overflow = '';
                setLoading(false);  
            } catch (error) {
                console.error('Error fetching data:', error);
                document.body.style.overflow = '';
            }
        }

        fetchData()
    }, []);

    const rows = [
        createData('Name', 'name', ""),
        createData('Tipe Speaker', 'subCategory', ""),
    ];

    const rowsImage = [
        createData('Drawing', 'drawing_url', ""),
        createData('Respon Frekuensi', 'frequency_url', ""),
        createData('Impedansi', 'impedance_url', ""),
    ]

    function resetComparison() {
      router.push('/drivers?reset=true');
  }

    return (
        loading?
            <FullScreenLoader isVisible={loading} />
        :
        <div className='bg-white -z-10'>
        <div className="container mx-auto xl:px-36 lg:px-20 px-10 xl:py-8 lg:py-6 py-4">
            <div className='w-full text-center'>
                <h1 className='text-3xl font-bold text-black pb-4 md:pt-0 pt-16'>
                    KOMPARASI PRODUK
                </h1>
                <Separator className='bg-foreground w-56 h-2 mx-auto'/>
                <div className='py-2 text-black'>
                    {allDriversName}
                </div>
                <div className="w-full flex justify-center pb-4">
                    <div className='pr-4'>
                        <Button
                            onClick={resetComparison}
                            variant="outline"
                            className="bg-transparent border-foreground border-4 w-40"
                        >
                            <b>CLEAR</b>
                        </Button>
                    </div>
                    <Button
                        variant="default"
                        className="bg-secondary border-foreground border-2"
                        asChild
                    >
                    <Link href={`/drivers`}> 
                        <Plus size={25} className="pr-2" strokeWidth={3}/>
                        <b>TAMBAH PRODUK</b>
                    </Link>
                    </Button>
                </div>
            </div>
            {finalFetchedProducts.length>0 &&
           <div className="flex justify-center">
           <ScrollArea className="w-full whitespace-nowrap border-2">
                <Table className="border">
                    <TableHeader className='border-2 border-black'>
                        <TableRow className='hover:bg-white'>
                            <TableHead className='font-bold text-black bg-gray-200 border-2 border-black w-40'>Visual Speaker</TableHead>
                            {finalFetchedProducts.map((product) => (
                                <TableHead key={product.name} className="items-center text-black border-2 border-black min-w-40 p-1">
                                    <div className='max-h-full max-w-full object-contain p-2'>
                                        <LazyImage
                                            src={product.coverImg.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${product.coverImg.url}` : product.coverImg.url} 
                                            alt={product.coverImg.name} 
                                            width={144}
                                            height={144} 
                                        />
                                    </div>
                                </TableHead>
                            ))}
                        </TableRow>
                    </TableHeader>
                    <TableBody className=' border-2 border-black'>


                        {rows.map((row,index)=> {
                            if (row.attribute === 'name') {
                                const hasValue = finalFetchedProducts.some(product => product.name != "");
                                return hasValue && (
                                    <TableRow key={index} className='hover:bg-secondary text-black border-2 border-black'>
                                        <TableCell className='font-bold bg-gray-200 border-2 border-black p-2'>{row.name}</TableCell>
                                        {finalFetchedProducts.map((product) => (
                                            (<TableCell key={product.name} className='text-center border-2 border-black'>{product.name !== ''? `${product.name}`: '-'
                                                    }
                                            </TableCell>)
                                        ))}
                                    </TableRow>
                                );
                            }
                            else if (row.attribute === 'subCategory') {
                                const hasValue = finalFetchedProducts.some(product => product.sub_sub_categories.length>0);
                                return hasValue && (
                                    <TableRow key={index} className='hover:bg-secondary text-black border-2 border-black'>
                                        <TableCell className='font-bold bg-gray-200 border-2 border-black p-2'>{row.name}</TableCell>
                                        {finalFetchedProducts.map((product) => (
                                            (<TableCell key={product.name} className='text-center border-2 border-black p-2'>{product.sub_sub_categories.length > 0? `${product.sub_sub_categories[0].name}`: '-'
                                                    }
                                            </TableCell>)
                                        ))}
                                    </TableRow>
                                );
                            }
                        })}






                        {Object.entries(allSpecsUsed).map(([parentKey, subRecord]) =>
                            parentKey !== "Additional Notes" &&
                            Object.entries(subRecord).map(([subKey, childRecord]) => (
                                <React.Fragment key={`${parentKey}-${subKey}`}>
                                {/* Parent/Sub header row */}
                                <TableRow className="border-y-2 border-black">
                                    <TableCell
                                    colSpan={finalFetchedProducts.length + 1}
                                    className="font-bold text-lg bg-gray-200 text-black"
                                    >
                                    {parentKey}
                                    {subKey !== "" && (
                                        <> - <span className="font-semibold text-base text-black">{subKey}</span></>
                                    )}
                                    </TableCell>
                                </TableRow>

                                {/* Child spec rows */}
                                {Object.entries(childRecord).map(([childKey, _]) => (
                                    <TableRow key={`${parentKey}-${subKey}-${childKey}`} className='hover:bg-secondary'>
                                    {/* Spec name cell */}
                                    <TableCell className="font-bold text-black border-2 border-black bg-gray-200">{parentKey !== 'Additional Notes' && childKey}</TableCell>

                                    {/* Each product value */}
                                    {finalFetchedProducts.map((product) => {
                                        const foundChild = product.specification.find(
                                        (spec) =>
                                            spec.parentname === parentKey &&
                                            spec.subparentname === subKey &&
                                            spec.child.some(
                                            (subval) => subval.childname === childKey
                                            )
                                        );

                                        const matchedChild = foundChild?.child.find(
                                        (subval) => subval.childname === childKey
                                        );

                                        const value = matchedChild?.value ?? "-";
                                        const unit = matchedChild?.unit ?? "";

                                        return (
                                        <TableCell
                                            key={`${product.id}-${childKey}`}
                                            className="text-sm text-black text-center min-w-[250px] max-w-[400px] break-all whitespace-normal px-2 border-2 border-black"
                                        >
                                            {value !== "-" ? `${value} ${unit}` : value}
                                        </TableCell>
                                        );
                                    })}
                                    </TableRow>
                                ))}
                                </React.Fragment>
                            ))
                        )}




                        {rowsImage.map((row,index)=> {
                            if (row.attribute === 'frequency_url') {
                                const hasValue = finalFetchedProducts.some(product => product.graph.length>0);
                                return hasValue && (
                                    <TableRow key={index} className='hover:bg-secondary text-black border-2 border-black'>
                                        <TableCell className='font-bold bg-gray-200 border-2 border-black p-2'>{row.name}</TableCell>
                                        {finalFetchedProducts.map((product) => (
                                            (<TableCell key={product.graph[0].name} className="justify-center items-center border-2 border-black p-2">
                                                {product.graph.length > 0 && (
                                                    (<div className='h-full w-56 mx-auto'>
                                                        <LazyImage
                                                            src={product.graph[0].url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${product.graph[0].url}` : product.graph[0].url}
                                                            alt={product.graph[0].name}
                                                            width={300}
                                                            height={300} 
                                                        />
                                                    </div>)
                                                    // <Image
                                                    //     src={product.graph_Url[0].startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${product.graph_Url[0]}` : product.graph_Url[0]}
                                                    //     alt={product.name}
                                                    //     width={384}
                                                    //     height={216} 
                                                    //     className="w-96 h-fit"
                                                    // />
                                                    )}
                                            </TableCell>)
                                        ))}
                                    </TableRow>
                                );
                            }
                            else if (row.attribute === 'drawing_url') {
                                const hasValue = finalFetchedProducts.some(product => product.drawing.length>0);
                                return hasValue && (
                                    <TableRow key={index} className='hover:bg-secondary text-black border-2 border-black'>
                                        <TableCell className='font-bold bg-gray-200 border-2 border-black p-2'>{row.name}</TableCell>
                                        {finalFetchedProducts.map((product) => (
                                            (<TableCell key={product.drawing[0].name} className="justify-center items-center border-2 border-black p-2">
                                                {product.drawing.length > 0 && (
                                                    (<div className='h-full w-56 mx-auto'>
                                                        <LazyImage
                                                            src={product.drawing[0].url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${product.drawing[0].url}` : product.drawing[0].url}
                                                            alt={product.drawing[0].name}
                                                            width={300}
                                                            height={300} 
                                                        />
                                                    </div>)
                                                    )}
                                            </TableCell>)
                                        ))}
                                    </TableRow>
                                );
                            }
                            else if (row.attribute === 'impedance_url') {
                                const hasValue = finalFetchedProducts.some(product => product.impedance.length>0);
                                return hasValue && (
                                    <TableRow key={index} className='hover:bg-secondary text-black border-2 border-black'>
                                        <TableCell className='font-bold bg-gray-200 border-2 border-black p-2'>{row.name}</TableCell>
                                        {finalFetchedProducts.map((product) => (
                                            (<TableCell key={product.impedance[0].name} className="justify-center items-center border-2 border-black p-2">
                                                {product.impedance.length > 0 && (
                                                    (<div className='h-full w-56 mx-auto'>
                                                        <LazyImage
                                                            src={product.impedance[0].url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${product.impedance[0].url}` : product.impedance[0].url}
                                                            alt={product.impedance[0].name}
                                                            width={300}
                                                            height={300}  
                                                        />
                                                    </div>)
                                                    // <Image
                                                    //     src={product.impedance_Url[0].startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${product.impedance_Url[0]}` : product.impedance_Url[0]}
                                                    //     alt={product.name}
                                                    //     width={384}
                                                    //     height={216} 
                                                    //     className="w-96 h-fit"
                                                    // />
                                                    )}
                                            </TableCell>)
                                        ))}
                                    </TableRow>
                                );
                            }
                        })}


                    </TableBody>
                </Table>
                <ScrollBar orientation="horizontal" />
                </ScrollArea>
            </div>
            }
        </div>
        </div>
        );
}

export default ProductBySubCategoryPage;
