"use client"
import { AllFilterProductsOnlyType, CheckBoxData, ChildSpecificationProp, SliderData } from "@/app/(roadmaster)/types";
import AllDriversandFiltersProducts from "../components/all-filters";
import { useEffect, useState } from "react";
import { Loader } from "@/app/(roadmaster)/components/ui/loader";
import getAllProductsForFilterPage from "@/app/(roadmaster)/actions/get-all-products-for-filter-page";

type Props = {
  params: Promise<{ driversSubCategory: string }>
}

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_PRODUCTS_BY_SUB_CATEGORY}`;

function removeDuplicates<RangeSliderFilter>(arr: RangeSliderFilter[]): RangeSliderFilter[] {
  return Array.from(new Set(arr));
}

export default function ProductBySubCategoryPage(props: Props) {
  const [allprodserver, setallprodserver] = useState<AllFilterProductsOnlyType[]>([])
  const [loading, setloading] = useState<boolean>(true)
  const [showserver, setshowserver] = useState<boolean>(true)
  const [sliderRows, setsliderRows] = useState<SliderData[]>([])
  const [checkboxRows, setcheckboxRows] = useState<CheckBoxData[]>([])
  
  useEffect(() => {
    const fetchData = async () => {
      try {
        let driversubcat = (await props.params).driversSubCategory
        const API_EDITED = API.replace('{productSubCategory}', driversubcat)
        let [tempData, allSpecsCombined]: [AllFilterProductsOnlyType[], Record<string, ChildSpecificationProp[]>] = await getAllProductsForFilterPage(API_EDITED);
        let sliderRows: SliderData[] = [];
        let checkboxRows: CheckBoxData[] = [];

        let counterShow = 0;
        for (const key in allSpecsCombined) {
          if(key !== 'series' && key != "type") {
            const allValueWithoutDuplicates: number[] = removeDuplicates(allSpecsCombined[key].map((val) => Number(val.value)));
            const allValueWithoutDuplicatesAndNone = allValueWithoutDuplicates.filter(number => !Number.isNaN(number));
            const sortedValues = allValueWithoutDuplicatesAndNone.slice().sort((a, b) => a - b);
            if(sortedValues.length>1){
              counterShow+=1
            }
            sliderRows.push(
              {
                name: allSpecsCombined[key][0].childname, 
                value: sortedValues, 
                unit: allSpecsCombined[key][0].unit,
                max_index: sortedValues.length - 1,
                min_index: 0,
                minIndex: 0,
                maxIndex: sortedValues.length - 1,
                slug: key
              },
            )
          }
          else{
            const allValueWithoutDuplicates: string[] = removeDuplicates(allSpecsCombined[key].map((val) => val.value));
            const allValueWithoutDuplicatesAndNone = allValueWithoutDuplicates.filter(number => number != '');
            const sortedValues = allValueWithoutDuplicatesAndNone.sort()
            if(sortedValues.length>1){
              counterShow+=1
            }
            checkboxRows.push(
              {
                name: allSpecsCombined[key][0].childname, 
                value: sortedValues, 
                unit: allSpecsCombined[key][0].unit,
                slug: key,
              },
            )
          }
        }
        

        if(counterShow===0){
          setshowserver(false)
        }
        
        setsliderRows(sliderRows)
        setcheckboxRows(checkboxRows)
        setallprodserver(tempData)
        setloading(false)
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();
  }, []); 
  
        
  return(
      loading?
        <div className="flex items-center justify-center w-full h-screen z-50 bg-white">
          <Loader/>
        </div>  
      :
    <>
        <div className="bg-white -z-10">
        <div className="relative w-full py-8 h-fit">
          {showserver?
            <AllDriversandFiltersProducts data={allprodserver} slider={sliderRows} checkbox={checkboxRows} showFilters={showserver} />
          :
            <div className="md:grid md:grid-cols-4">
              <AllDriversandFiltersProducts data={allprodserver} slider={sliderRows} checkbox={checkboxRows} showFilters={showserver} />
            </div>
          }
        </div>
        </div>
    </>
  );
}