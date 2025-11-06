import { redirect } from "next/navigation";
import { AllCategory, Product } from "@prisma/client";
import { ProductWithRelations } from "../types";

const getAllProductsAndCategory = async (api: string): Promise<[ProductWithRelations[], AllCategory[]]> => {

  const response = await fetch(api);
  if (!response.ok) {
    redirect('/');
    // throw new Error(`Failed to fetch products by ${subsubcategory}`);
  }
  const data = await response.json();
  if (!data) {
    redirect('/');
  }
  return [data.product, data.allCategory];
};

export default getAllProductsAndCategory;

