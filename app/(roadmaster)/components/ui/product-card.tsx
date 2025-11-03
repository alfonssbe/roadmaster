import Link from "next/link";
import { AllFilterProductsOnlyType } from "../../types";
import { LazyImageClickable } from "../lazyImageClickable";

interface ReviewCard {
  data: AllFilterProductsOnlyType
}

const ProductCard: React.FC<ReviewCard> = ({
  data
}) => {
  return ( 
    <Link href={{
      pathname: `/products/${data?.products.slug}`,
      // query: { name : data.name },
    }} 
    className="bg-white group cursor-pointer"
    >
      <div className="relative flex content-center justify-center h-[150px] w-full">
      <div className="w-full h-auto px-12">
        <LazyImageClickable
          src={data.products.cover_img.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${data.products.cover_img.url}` : data.products.cover_img.url} 
          alt={data.products.name} 
          width={500}
          height={500}
        />
      </div>
    </div>


      <div className="flex flex-col items-center pt-4">
        {data.specs && data.specs.length > 0 &&
          <div className="text-sm text-gray-400 lg:text-lg font-semibold text-center">{data.specs.find((val) => val.slug === 'type')?.value}</div>
        }
        <div className="text-lg lg:text-2xl font-bold text-center pb-2 text-black">{data.products.name}</div>
        {/* {data.sub_sub_categories.length > 0 &&        
          <h2 className="sr-only">{data.name} - {data?.sub_sub_categories[0]?.name}</h2>
        } */}
      </div>
      {/* </div> */}
    </Link>
  );
}

export default ProductCard;
