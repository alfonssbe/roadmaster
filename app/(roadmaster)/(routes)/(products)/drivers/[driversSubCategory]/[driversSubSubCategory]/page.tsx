import getAllProductsBySubSubCategoryJsonld from "@/app/(roadmaster)/actions/jsonLd/get-all-products-by-sub-sub-category-jsonld";
import ProductBySubSubCategoryPage from "./pageClient";
import getSubCatNameBySlug from "@/app/(roadmaster)/actions/get-SubCat_Name";
import getSubSubCatNameBySlug from "@/app/(roadmaster)/actions/get-SubSubCat_Name";
import { AllProductsJsonType } from "@/app/(roadmaster)/types";

type Props = {
  params: Promise<{ driversSubCategory: string, driversSubSubCategory: string }>
}

export default async function SubSubDriversPage(props: Props) {
  let driversubcat = (await props.params).driversSubCategory
  let driversubsubcat = (await props.params).driversSubSubCategory
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const [subCatNameResult, subSubCatNameResult] = await Promise.allSettled([
    getSubCatNameBySlug(driversubcat),
    getSubSubCatNameBySlug(driversubsubcat),
  ]);

  const subCatName = subCatNameResult.status === 'fulfilled' ? subCatNameResult.value : { name: '' };
  const subSubCatName = subSubCatNameResult.status === 'fulfilled' ? subSubCatNameResult.value : { name: '' };
  const allprodserver : AllProductsJsonType[] = await getAllProductsBySubSubCategoryJsonld(driversubcat, driversubsubcat); // SSR fetch

  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    "name": "Driver Roadmaster",
    "description":  driversubcat && driversubsubcat && driversubcat!= "" && driversubsubcat != "" ? "Seri ".concat(driversubcat, " ", driversubsubcat, " Terbaik dari Roadmaster"): 'Semua Driver milik Roadmaster.',
    "url": driversubcat && driversubsubcat && driversubcat!= "" && driversubsubcat != "" ? `${baseUrl}/drivers/${driversubcat}/${driversubsubcat}` : `${baseUrl}/drivers/`,
    "itemListElement": allprodserver.map((driver, index) => ({
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
      <h1 className="sr-only">Seri {subCatName.name} {subSubCatName.name} | Roadmaster</h1>
      <ProductBySubSubCategoryPage params={props.params} />
    </>
  );
}