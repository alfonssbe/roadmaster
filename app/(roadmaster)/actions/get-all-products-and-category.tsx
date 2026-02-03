import { redirect } from "next/navigation";
import { allcategory } from "@prisma/client";
import { ProductWithRelations } from "../types";

const getAllProductsAndCategory = async (api: string): Promise<[ProductWithRelations[], allcategory[]]> => {

  const response = await fetch(api, {
    next: { revalidate: 30 }
  });
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

