import { Swiper, SwiperSlide } from 'swiper/react';

// Import Swiper styles
import 'swiper/css';
import 'swiper/css/free-mode';

// import required modules
import { FreeMode } from 'swiper/modules';
import Image from 'next/image';
import Link from 'next/link';
import { NewsType } from '../../types';
import { Button } from '@/components/ui/button';
import DOMPurify from 'dompurify'; 

interface SwiperCarouselNewsProps {
  news: NewsType[];
}

export default function SwiperCarouselNews({ news }: SwiperCarouselNewsProps) {
  return (
    <Swiper
      slidesPerView={1.25}
      spaceBetween={10}
      freeMode={true}
      modules={[FreeMode]}
      className="mySwiper h-full"
    >
      {news.map((value, index) => (
        <SwiperSlide key={index}>
          <div className={`${index === 0 ? 'pr-4': index === news.length - 1 ? 'pl-4' : 'px-2'}`} key={index}>
          <Image
            src={value.news_img_url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${value.news_img_url}` : value.news_img_url}
            alt={value.title}
            width={500}
            height={500}
            className='w-fit h-[300px] mx-auto rounded-xl'
          />
          <div className='text-2xl font-bold text-black w-full line-clamp-2 my-4'>
              {value.title}
          </div>
          <div className="text-black w-full line-clamp-3 my-4" dangerouslySetInnerHTML={{ __html: DOMPurify.sanitize(value.description)}}>
          </div>
            <div className="items-start pb-4 pt-2 w-full">
              <Button asChild size={'lg'} variant={'secondary'} className='w-full'>
                <Link href={`/news/${value.slug}`} className='text-white font-bold'>READ MORE</Link>
              </Button>
            </div>
          </div>
        </SwiperSlide>
      ))}
    </Swiper>
  );
}
