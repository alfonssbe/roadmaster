import { AllCategory, FilesProp, SingleProducts, SingleProductsType, Size, SpecificationProp  } from "@/app/(roadmaster)/types";
import { redirect } from "next/navigation";

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ONE_PRODUCT}`;

type SingleProductsTypeComplete = {
  product: SingleProductsType;
  specifications: SpecificationProp[]
};

const getProduct = async (productSlug: string): Promise<SingleProducts> => {
  const API_EDITED = API.replace('{productSlug}', productSlug)
  const response = await fetch(API_EDITED!);
  if (!response.ok) {
    redirect('/');
    // throw new Error('Failed to fetch one product');
  }
  const data: SingleProductsTypeComplete = await response.json();
  if (!data) {
    redirect('/');
  }
  let prod_cat: AllCategory[] = []
  let prod_sub_cat: AllCategory[] = []
  let prod_sub_sub_cat: AllCategory[] = []
  let cover_image: FilesProp = {
    name: '',
    url: '',
    productId: ''
  }
  let all_image_catalogues : Array<FilesProp> = []
  let all_drawing : Array<FilesProp> = []
  let all_graph : Array<FilesProp> = []
  let all_impedance : Array<FilesProp> = []
  let all_datasheet : Array<FilesProp> = []

  if (data && data.product){
    if(data.product.allCat){
      for (let i = 0; i < data.product.allCat.length; i++) {
        let temp: AllCategory = {
          id: data.product.allCat[i].id,
          name: data.product.allCat[i].name,
          slug: data.product.allCat[i].slug
        }
        if(data.product.allCat[i].type === "Category"){
          prod_cat.push(temp)
        }
        else if(data.product.allCat[i].type === "Sub Category"){
          prod_sub_cat.push(temp)
        }
        else{
          prod_sub_sub_cat.push(temp)
        }
      }
    }

    data.product.cover_img && data.product.cover_img.length > 0 && data.product.cover_img.map((img) => {
      cover_image = {
        name: `${data.product.name} - Cover`,
        url: img.url,
        productId: img.id
      }
    })

    data.product.images_catalogues && data.product.images_catalogues.length > 0 && data.product.images_catalogues.map((img) => {
      all_image_catalogues.push({
        name: img.name,
        url: img.url,
        productId: img.id
      })
    })
    
    data.product.drawing_img && data.product.drawing_img.length > 0 && data.product.drawing_img.map((img) => {
      all_drawing.push({
        name: `${data.product.name} - Drawing`,
        url: img.url,
        productId: img.id
      })
    })
    
    data.product.graph_img && data.product.graph_img.length > 0 && data.product.graph_img.map((img) => {
      all_graph.push({
        name: `${data.product.name} - Frequency Response`,
        url: img.url,
        productId: img.id
      })
    })
    
    data.product.impedance_img && data.product.impedance_img.length > 0 && data.product.impedance_img.map((img) => {
      all_impedance.push({
        name: `${data.product.name} - Impedance`,
        url: img.url,
        productId: img.id
      })
    })

    data.product.multipleDatasheetProduct && data.product.multipleDatasheetProduct.length > 0 && data.product.multipleDatasheetProduct.map((img) => {
      all_datasheet.push({
        name: img.name,
        url: img.url,
        productId: img.id
      })
    })


    let size = {} as Size;
    if(data.product.size!=null){
      let size2: Size = {
        label: data.product.size.value,
        value: Number(data.product.size.name)
      }
      size = size2  
    }

   
    let product: SingleProducts = {
      coverImg: cover_image,
      size: size,
      images_Catalogues: all_image_catalogues,
      drawing: all_drawing,
      graph: all_graph,
      impedance: all_impedance,
      categories: prod_cat,
      sub_categories: prod_sub_cat,
      sub_sub_categories: prod_sub_sub_cat,
      datasheet: all_datasheet,
      specification: data.specifications,
      id: data.product.id,
      name: data.product.name,
      desc: data.product.description,
      slug: data.product.slug,
    }
    return product;
  }
  let product: SingleProducts = {
    coverImg: cover_image,
    size: {
      value:0,
      label:'',
    },
    images_Catalogues: all_image_catalogues,
    drawing: all_drawing,
    graph: all_graph,
    impedance: all_impedance,
    categories: prod_cat,
    sub_categories: prod_sub_cat,
    sub_sub_categories: prod_sub_sub_cat,
    datasheet: all_datasheet,
    specification: [],
    id: "",
    name: "",
    desc: "",
    slug: "",
  }
  return product;
};

export default getProduct;

