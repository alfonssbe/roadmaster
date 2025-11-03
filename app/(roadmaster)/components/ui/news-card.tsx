import Link from "next/link";
import { NewsType } from "../../types";
import { Button } from "@/components/ui/button";
import Image from "next/image";
import DOMPurify from 'dompurify'; 

interface NewsCardProps {
  data: NewsType;
}

const NewsCard: React.FC<NewsCardProps> =  ({ data }) => {
  const eventDate = new Date(data.event_date).toLocaleDateString('id-ID', {
    year: 'numeric',
    month: 'long',  // Full month name
    day: '2-digit'  // Day with leading zero if necessary
  });
  return ( 
    <div className="py-4">
      <div className="md:flex block items-center">    
        {/* <div className="w-fit">  */}
        <Image
          src={data.news_img_url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${data.news_img_url}` : data.news_img_url} 
          alt={data.title} 
          width={300}
          height={300}
          className="md:w-[200px] w-[150px] h-fit justify-center"
        />
        {/* </div> */}
        <div className="md:w-2/3 md:pl-12">
          <h2 className="text-lg lg:text-xl font-bold text-black pb-2 md:pt-0 pt-4">
            {data.title}
          </h2>
          <h3 className="text-sm py-2 text-black">
            {eventDate}
          </h3>
          <h3 className="text-base py-2 text-black"  dangerouslySetInnerHTML={{ __html: DOMPurify.sanitize(data.description.length > 150
              ? `${data.description.slice(0, 150)}...`
              : data.description)}}>
          </h3>
          <div className="text-base py-2 text-black">
            <Button asChild size={'lg'} variant={'secondary'} className="sm:w-fit w-full">
              <Link href={`/news/${data.slug}`} className='text-white font-bold'>READ MORE</Link>
            </Button>
          </div>
        </div>
      </div>
    </div>
  );
}

export default NewsCard;
