import getAllProductsJsonld from "@/app/(roadmaster)/actions/jsonLd/get-all-products-jsonld";
import ProductByCategoryPage from "./pageClient";
import { AllProductsJsonType } from "@/app/(roadmaster)/types";

export default async function DriversPage() {
  const allprodserver: AllProductsJsonType[] = await getAllProductsJsonld(); // SSR fetch
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';

  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    "name": "Roadmaster Drivers",
    "description": "Semua driver dari Roadmaster.",
    "url": `${baseUrl}/drivers`,
    "itemListElement": allprodserver.map((driver, index) => ({
      "@type": "ListItem",
      "position": index + 1,
      "item": {
        "@type": "Product",
        "url": `${baseUrl}/products/${driver.slug}`,
        "name": driver.name,
        "description": driver.name,
        "image": `${baseUrl}${driver.cover_img.url}`,
        "sku": driver.slug || driver.id,
        "brand": {
          "@type": "Brand",
          "name": "Roadmaster"
        }
      }
    }))
  }  

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <h1 className="sr-only">Semua Driver | Roadmaster</h1>
      <ProductByCategoryPage />
    </>
  );
}