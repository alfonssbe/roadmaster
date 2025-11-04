import { MetadataSingleProducts } from "@/app/(roadmaster)/types";
import { redirect } from "next/navigation";

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_METADATA_SINGLE_PRODUCT}`;

const getSingleMetadata = async (productSlug: string): Promise<MetadataSingleProducts> => {
  const API_EDITED = API.replace('{productSlug}', productSlug)
  const response = await fetch(API_EDITED!);
  if (!response.ok) {
    redirect('/');
    // throw new Error('Failed to fetch one product');
  }
  const data = await response.json();
  if (!data) {
    redirect('/');
  }
  if (data){

    let product: MetadataSingleProducts = {
      id: data.id,
      coverUrl: data.cover_img[0].url,
      coverAlt: data.name,
      name: data.name,
      desc: data.description,
      slug: data.slug 
    }
    
    return product;
  }
  let product: MetadataSingleProducts = {
    id: "",
    coverUrl: "",
    coverAlt: "",
    name: "",
    desc: "",
    slug: "",
  }
  return product;
};

export default getSingleMetadata;

