import { redirect } from "next/navigation";
import { AllFilterProductsOnlyType, ChildSpecificationProp } from "../types";

const getAllProductsForFilterPage = async (api: string): Promise<[AllFilterProductsOnlyType[], Record<string, ChildSpecificationProp[]>]> => {

  let allSizes : string[] = []
  const response = await fetch(api);
  if (!response.ok) {
    redirect('/');
    // throw new Error(`Failed to fetch products by ${subsubcategory}`);
  }
  const data = await response.json();
  if (!data) {
    redirect('/');
  }

  let allSpecs: Record<string, ChildSpecificationProp[]> = data.allSpecsCombined
  let tempSize: ChildSpecificationProp[] = []
  let finalTemp: AllFilterProductsOnlyType[] = []
  data.products.map((val: any) => {
    tempSize.push({
      childname: "Size",
      value: val.size.name,
      slug: 'size',
      notes: '',
      unit: `"`
    })
    allSizes.push(val.size.name)
    // console.log("val.allcat", val.allCat)
    let alltempSpec: ChildSpecificationProp[] = []
    val.connectorSpecifications.map((spec: any) => {
      let tempSpec: ChildSpecificationProp = {
        childname: spec.dynamicspecification.name,
        value: spec.value,
        slug: spec.dynamicspecification.slug,
        notes: spec.notes,
        unit: spec.dynamicspecification.unit
      }
      alltempSpec.push(tempSpec)
    })

    for (const key in allSpecs) {
      if (key === 'type'){
        val.allCat.map((cat: any) => {
          if(cat.type === 'Sub Sub Category') {
            let tempSpec: ChildSpecificationProp = {
              childname: "Type",
              value: cat.name,
              slug: "type",
              notes: '',
              unit: ''
            }
            alltempSpec.push(tempSpec)
          }
        })
      }
      else if (key === 'series'){
        val.allCat.map((cat: any) => {
          if(cat.type === 'Sub Category') {
            let tempSpec: ChildSpecificationProp = {
              childname: "Series",
              value: cat.name,
              slug: "series",
              notes: '',
              unit: ''
            }
            alltempSpec.push(tempSpec)
          }
        })
      }
    }
    

    let temp: AllFilterProductsOnlyType = {
      products: {
        id: val.id,
        name: val.name,
        slug: val.slug,
        cover_img: {
          url: val.cover_img[0].url
        }
      },
      size: {
        name: val.size.value,
        value: val.size.name
      },
      specs: alltempSpec
    }
    finalTemp.push(temp)
  })

  allSpecs['size'] = tempSize
  for (const key in allSpecs) {
    if (allSpecs[key].length === 0) {
      delete allSpecs[key]
    }
  }
  
  return [finalTemp, allSpecs];
};

export default getAllProductsForFilterPage;

