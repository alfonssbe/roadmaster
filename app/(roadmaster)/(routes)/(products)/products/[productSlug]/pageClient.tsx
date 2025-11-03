"use client"
import Link from "next/link";
import { FileDown } from "lucide-react";
import SwiperCarouselCoverandCatalogues from "@/app/(roadmaster)/components/ui/swipercarouselcoverandcatalogues";
import { redirect } from "next/navigation";
import { Separator } from "@/components/ui/separator";
import SwiperCarouselGraphImpedance from "@/app/(roadmaster)/components/ui/swipercarouselgraphimpedance";
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from "@/app/(roadmaster)/components/ui/breadcrumb";
import getProduct from "@/app/(roadmaster)/actions/get-one-product";
import DOMPurify from 'dompurify'; 
import { useEffect, useState } from "react";
import { SingleProducts } from "@/app/(roadmaster)/types";
import { Loader } from "@/app/(roadmaster)/components/ui/loader";
import "./styles.scss";
import SpecificationTable from "@/app/(roadmaster)/components/spec-table";

const all_desc_style = "text-left xl:text-base sm:text-sm text-xs text-black p-0 py-1"
const all_sub_title_style = "text-left font-bold xl:text-4xl text-2xl text-black"


type Props = {
  params: Promise<{ productSlug?: string }>
}

export default function SingleProductClient(props: Props) { 
    const [data, setData] = useState<SingleProducts>();
    const [loading, setLoading] = useState<boolean>(true);
    useEffect(() => {
    
        const fetchData = async () => {
            try {
                const { productSlug = '' } = await props.params;
                document.body.style.overflow = 'hidden';
                let tempdata = await getProduct(productSlug)
                if(tempdata.id === '' && tempdata.slug === ''){
                    redirect('/notfound')
                }
                setData(tempdata)
                setLoading(false)
                document.body.style.overflow = '';
            } catch (error) {
                console.error('Error fetching data:', error);
                document.body.style.overflow = '';
            }
      };
  
      setLoading(true)
      fetchData();
    }, [props.params]);
    return(
        <div className="container mx-auto xl:px-36 lg:px-20 px-10 xl:py-8 lg:py-6 py-4">
            {loading?
              <div className="flex items-center justify-center w-full h-screen z-50 bg-white">
                <Loader/>
              </div>  
            :
            data &&
                <>
                <div className="pb-6">
                    <Breadcrumb>
                        <BreadcrumbList>
                            <BreadcrumbItem>
                            <BreadcrumbLink href="/">Home</BreadcrumbLink>
                            </BreadcrumbItem>
                            <BreadcrumbSeparator />
                            {data?.categories?.[0] && (
                                <>
                                    <BreadcrumbItem>
                                    <BreadcrumbLink href={`/${data.categories[0].slug}`}>{data.categories[0].name}</BreadcrumbLink>
                                    </BreadcrumbItem>
                                    <BreadcrumbSeparator />
                                </>
                                )}

                                {data?.categories?.[0] && data?.sub_categories?.[0] && (
                                <>
                                    <BreadcrumbItem>
                                    <BreadcrumbLink href={`/${data.categories[0].slug}/${data.sub_categories[0].slug}`}>
                                        {data.sub_categories[0].name}
                                    </BreadcrumbLink>
                                    </BreadcrumbItem>
                                    <BreadcrumbSeparator />
                                </>
                                )}

                                {data?.categories?.[0] && data?.sub_categories?.[0] && data?.sub_sub_categories?.[0] && (
                                <>
                                    <BreadcrumbItem>
                                    <BreadcrumbLink href={`/${data.categories[0].slug}/${data.sub_categories[0].slug}/${data.sub_sub_categories[0].slug}`}>
                                        {data.sub_sub_categories[0].name}
                                    </BreadcrumbLink>
                                    </BreadcrumbItem>
                                    <BreadcrumbSeparator />
                                </>
                                )}

                            <BreadcrumbItem>
                            <BreadcrumbPage>{data.name}</BreadcrumbPage>
                            </BreadcrumbItem>
                        </BreadcrumbList>
                    </Breadcrumb>
                </div>
                <div className="block md:flex">
                {/* Right Column for Typography */}
                <div className="md:order-2 order-1 md:w-1/2 justify-center md:h-1/2 block w-full h-full md:pl-2 md:pb-0 pb-4">
                    <div className="flex flex-col w-full">
                        <div>
                            {data.coverImg && data.images_Catalogues &&
                                <div className="w-full h-fit pb-4">
                                    <SwiperCarouselCoverandCatalogues cover={data.coverImg} image_catalogues={data.images_Catalogues} />
                                </div>
                            }
                            {(data.drawing || data.graph || data.impedance) && 
                                <div className="w-full h-fit pb-4">
                                    <SwiperCarouselGraphImpedance drawing={data.drawing} graph={data.graph} impedance={data.impedance} />
                                </div>
                            }

                            {data.datasheet && 
                                <div className="pt-4 space-y-2">
                                    {data.datasheet.length > 0 && data.datasheet.map((sheet, index) => (
                                    sheet?.url && (
                                        <Link key={index} href={sheet.url} target="_blank" rel="noopener noreferrer">
                                        <div className="w-full bg-blue-500 text-white flex justify-center items-center py-2 rounded-lg hover:bg-foreground transition-all ease-in-out duration-200">
                                            <FileDown size={20} className="mr-2" />
                                            <div>{sheet.name || "Download Manual"}</div>
                                        </div>
                                        </Link>
                                    )
                                    ))}
                                </div>
                            }
                        </div>
                    </div>
                </div>

                {/* Left Column for Images */}
                <div className="md:order-1 order-2 md:w-1/2 md:h-1/2 block w-full h-full pr-2">
                    {data.sub_sub_categories.length > 0 && 
                        <div className={`${data.sub_sub_categories.length != 0 ? '' : 'hidden'}`}>
                            {data.sub_sub_categories.map((subsubcategory, index) => (
                                <div key={index} className="text-2xl text-gray-500 font-bold pb-4">
                                    {subsubcategory.name}
                                </div>
                            ))}
                        </div>
                    }

                    {data.name && <h1 className={`${all_sub_title_style} pb-4`}>{data.name}</h1>}

                    {data.sub_sub_categories.length > 0 && (
                        <h2 className={`sr-only`}>
                            {data.sub_sub_categories.map((subsubcategory, index) => (
                                    subsubcategory.name
                            ))}
                        </h2>
                    )}

                    <Separator className="bg-foreground w-56 h-2" />

                    {data.desc && data.desc != '' && data.desc != '-' && data.desc != '<p></p>' && 
                        <>
                            <h2 className="text-2xl text-gray-500 font-bold py-4">Deskripsi</h2>
                            <h3 className={`${all_desc_style} desc-content`} dangerouslySetInnerHTML={{ __html: DOMPurify.sanitize(data.desc, {
                                ALLOWED_TAGS: [
                                    'a', 'b', 'i', 'u', 'em', 'strong', 'p', 'div', 'span', 'ul', 'ol', 'li', 'br'
                                ],
                                ALLOWED_ATTR: [
                                    'href', 'target', 'rel', 'class', 'id', 'style'
                                ],
                            }) }}>
                            </h3>
                        </>
                    }

                
                    {data.specification && data.specification.length > 0 ?
                        <div className="justify-start pt-4">
                            <SpecificationTable spec={data.specification} styling={all_desc_style} stylingTitle={all_sub_title_style}/>
                        </div>
                        :
                        <div className="w-full flex items-center justify-center font-bold text-background md:h-96 h-20 text-3xl" >
                            Coming Soon!
                        </div>
                    }
                </div>
            </div>
        </>
    }
        </div>
    );
}
