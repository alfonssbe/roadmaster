import { AllProductsJsonType } from "@/app/(roadmaster)/types";
import { redirect } from "next/navigation";

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_PRODUCTS_JSON_BY_SUB_SUB_CATEGORY}`;

const getAllProductsBySubSubCategoryJsonld = async (subcategory: string, subsubcategory: string): Promise<AllProductsJsonType[]> => {
  const API_EDITED_FIRST = API.replace('{productSubCategory}', subcategory)
  const API_EDITED = API_EDITED_FIRST.replace('{productSubSubCategory}', subsubcategory)
  const response = await fetch(API_EDITED, {cache: "no-store"});
  if (!response.ok) {
      redirect('/');
    // throw new Error(`Failed to fetch products by ${subsubcategory}`);
  }
  const data : AllProductsJsonType[] = await response.json();
  if (!data) {
    redirect('/');
  }

  return data;
};

export default getAllProductsBySubSubCategoryJsonld;

