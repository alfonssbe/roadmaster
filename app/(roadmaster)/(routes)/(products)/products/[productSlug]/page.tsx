import { redirect } from "next/navigation";
import getSingleMetadata from "@/app/(roadmaster)/actions/get-metadata-single-product";
import SingleProductClient from "./pageClient";

type Props = {
  params: Promise<{ productSlug?: string }>
}

export default async function SingleProductJsonLd(props: Props) {
    const { productSlug = '' } = await props.params;
    const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3000';
    const data = await getSingleMetadata(productSlug); // SSR fetch
    if(data.id === '' && data.slug === ''){
        redirect('/notfound')
    }
    const jsonLd = {
        "@context": "https://schema.org",
        "@type": "Product",
        "name": data?.name? data.name : "",
        "description": data?.name? data.name : "",
        "image": data?.coverUrl ? `${baseUrl}${data.coverUrl}` : '',
        "sku": data?.slug || data?.id,
        "brand": {
          "@type": "Brand",
          "name": "Roadmaster"
        },
        "url": data?.slug ? `${baseUrl}/products/${data.slug}` : `${baseUrl}`,
        "isPartOf": "Roadmaster",
        "provider": {
          "@type": "Organization",
          "name": "Roadmaster"
        },
        "mainEntityOfPage": {
          "@type": "WebPage",
          "@id": `${baseUrl}`
        }
      };
      

    return(
        <>
            <script
                type="application/ld+json"
                dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
            />
            <SingleProductClient params={props.params}/>
        </>
    );
}