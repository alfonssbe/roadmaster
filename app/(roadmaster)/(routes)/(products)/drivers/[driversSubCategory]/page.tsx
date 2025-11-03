import getSubCatNameBySlug from "@/app/(roadmaster)/actions/get-SubCat_Name";
import ProductBySubCategoryPage from "./pageClient";
import getAllProductsBySubCategoryJsonld from "@/app/(roadmaster)/actions/jsonLd/get-all-products-by-sub-category-jsonld";
import { AllProductsJsonType } from "@/app/(roadmaster)/types";

type Props = {
  params: Promise<{ driversSubCategory: string }>
}

export default async function SubDriversPage(props: Props) {
  let driversubcat = (await props.params).driversSubCategory
  const subCatName = await getSubCatNameBySlug(driversubcat)
  const allprodserver = await getAllProductsBySubCategoryJsonld(driversubcat); // SSR fetch
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';

  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    "name": "Driver milik Roadmaster",
    "description":  driversubcat && driversubcat!= "" ? `Seri ${driversubcat} terbaik dari Roadmaster.`: 'Semua driver dari Roadmaster',
    "url": driversubcat && driversubcat!= "" ? `${baseUrl}/drivers/${driversubcat}` : `${baseUrl}/drivers`,
    "itemListElement": allprodserver.map((driver: AllProductsJsonType, index) => ({
      "@type": "ListItem",
      "position": index + 1,
      "item": {
        "@type": "Product",
        "url": `${baseUrl}/products/${driver.slug}`,
        "name": driver.name,
        "description": driver.name,
        "image": `${baseUrl}${driver.cover_img?.url}`,
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
      <h1 className="sr-only">Seri {subCatName.name} | Roadmaster</h1>
      <ProductBySubCategoryPage params={props.params} />
    </>
  );
}