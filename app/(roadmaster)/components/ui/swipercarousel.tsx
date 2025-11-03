"use client"

import { Swiper, SwiperClass, SwiperSlide } from 'swiper/react';

import 'swiper/css';
import 'swiper/css/navigation';

import { Autoplay, Navigation } from 'swiper/modules';
import { FeaturedProducts } from '../../types';
import Link from 'next/link';
import { Separator } from '../../../../components/ui/separator';
import { Button } from '@/components/ui/button';
import Image from 'next/image';
import { useRef, useState } from 'react';

type PropType = {
  slides: FeaturedProducts[];
};

const SwiperCarousel: React.FC<PropType> = (props) => {
  const { slides } = props;
  const [realIndex, setRealIndex] = useState(0);
  const swiperRef = useRef<SwiperClass | null>(null);
  return (
    <div className="relative top-0 left-0 w-full z-10 h-full">
        <Swiper
          // centeredSlides={true}
          parallax={true}
          autoplay={{
              delay: 5000,
              disableOnInteraction: false,
          }}
          loop={true}
          onSwiper={(swiper) => (swiperRef.current = swiper)}
          onSlideChange={(swiper) => {
            const indexAttr = swiper.slides[swiper.activeIndex]?.getAttribute('data-swiper-slide-index');
            const real = indexAttr ? parseInt(indexAttr) : 0;
            setRealIndex(real);
          }}
          modules={[Autoplay, Navigation]}
          className="swiper"
        >
          {slides && slides.length > 0 && slides.map((item, indexParent) => (
            <SwiperSlide key={item.name.concat(` ${indexParent}`)}>
              <div className="container mx-auto flex flex-col md:flex-row items-center justify-between xl:px-36 lg:px-20 px-10 pb-16 pt-6">
                <div className="order-1 md:order-2 flex items-center justify-center md:w-2/5 w-full h-[200px] md:h-full">
                <Image
                  src={item.featuredImgUrl.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item.featuredImgUrl}` : item.featuredImgUrl}
                  alt={item.name}
                  width={500}
                  height={500}
                  sizes="(max-width: 768px) 100vw, 500px"
                  className="w-fit object-contain h-full"
                  priority
                />
                </div>
                <div className="order-2 md:order-1 flex flex-col justify-center items-center md:items-start text-center md:text-left gap-2 md:w-3/5 w-full">
                  <div className="text-3xl md:text-4xl font-bold text-white">
                    {item.series} SERIES
                  </div>
                  <Separator className="bg-foreground w-56 h-2 md:block hidden" />
                  <h3 className="text-2xl xl:text-3xl font-bold text-foreground">
                    {item.name}
                  </h3>
                  <h4 className='sr-only'>{item.series} SERIES</h4>
                  <p className="text-sm text-white md:hidden block line-clamp-3 h-[80px] sm:h-[50px]">
                    {item.featuredDesc.length > 150
                      ? `${item.featuredDesc.slice(0, 150)}...`
                      : item.featuredDesc}
                  </p>
                  <h4 className="text-base text-white md:block hidden">
                    {item.featuredDesc}
                  </h4>
                  <Button
                    asChild
                    size="lg"
                    variant="secondary"
                    className={`w-full md:w-fit mt-4`}>
                    <Link
                      href={`/products/${item.slug}`}
                      className="text-white font-bold"
                    >
                      LEARN MORE
                    </Link>
                  </Button>
                </div>
              </div>
            </SwiperSlide>
          ))}
        </Swiper>
        <div className="absolute bottom-6 left-1/2 -translate-x-1/2 z-10 flex justify-center gap-6">
          {slides.map((_, index) => (
            <button
              key={index}
              onClick={() => swiperRef.current?.slideToLoop(index)}
              className={`w-6 h-6 rounded-full transition-all duration-300 ${
                realIndex === index ? 'bg-foreground' : 'bg-white'
              }`}
            ></button>
          ))}
        </div>
    </div>
  );
};


export default SwiperCarousel;
