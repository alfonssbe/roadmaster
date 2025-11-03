import { AllProductsJsonType } from "@/app/(roadmaster)/types";
import { redirect } from "next/navigation";

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_PRODUCTS_JSON_BY_SUB_CATEGORY}`;

const getAllProductsBySubCategoryJsonld = async (subcategory: string): Promise<AllProductsJsonType[]> => {
  const API_EDITED = API.replace('{productSubCategory}', subcategory)
  const response = await fetch(API_EDITED);
  if (!response.ok) {
    redirect('/');
    // throw new Error(`Failed to fetch products by ${subcategory}`);
  }
  const data = await response.json();
  if (!data) {
    redirect('/');
  }

  return data;
};

export default getAllProductsBySubCategoryJsonld;

