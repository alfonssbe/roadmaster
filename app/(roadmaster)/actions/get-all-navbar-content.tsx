import { NavbarCategory, NavbarProducts } from "@/app/(roadmaster)/types";
import { redirect } from "next/navigation";

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_NAVBAR_CONTENT}`;

const getAllNavbarContent = async (): Promise<NavbarProducts[]> => {
  let allNavbarProducts: Array<NavbarProducts> = []

  const response = await fetch(API);
  if (!response.ok) {
      redirect('/');
    // throw new Error('Failed to fetch navbar products');
  }
  const data = await response.json();

  if (!data) {
    redirect('/');
  }
  for (let i = 0; i < data.length; i++) {
    if(data[i].url.length>0){
      // if(data[i].productName !== '10" LG 1040 & 12" LG 1240'){ //TEMPORARY FIX
        let allNavbarCat: Array<NavbarCategory> = []
        for(let j = 0; j < data[i].categories.length; j++){
          let cat: NavbarCategory = {
            name: data[i].categories[j].name,
            type: data[i].categories[j].type,
          }
          allNavbarCat.push(cat)
        }
        let product: NavbarProducts = {
          name: data[i].productName,
          href: "/products/".concat(data[i].productSlug),
          categories: allNavbarCat,
          url: data[i].url[0].url
        }
        allNavbarProducts.push(product)
      }
    // }
  }

  return allNavbarProducts;
};

export default getAllNavbarContent;

