import { Swiper, SwiperClass, SwiperSlide } from 'swiper/react';

// Import Swiper styles
import 'swiper/css';
import 'swiper/css/free-mode';
import 'swiper/css/navigation';
import 'swiper/css/pagination';

// import required modules
import { FreeMode, Navigation, Pagination, Autoplay } from "swiper/modules"
import Image from 'next/image';
import { ProductWithRelations } from '../../types';
import DOMPurify from 'dompurify';
import "./styles.scss";
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { useRef, useState } from 'react';

interface SwiperCarouselProductProps {
  products: ProductWithRelations[];
}

export default function SwiperCarouselSelectedCat({ products }: SwiperCarouselProductProps) {
  const [realIndex, setRealIndex] = useState(0);
  const swiperRef = useRef<SwiperClass | null>(null);
  return (
    <div className="w-full px-4 py-8">
      <Swiper
        breakpoints={{
          0: {
            slidesPerView: 1,
            spaceBetween: 12,
          },
          640: {
            slidesPerView: 1.25,
            spaceBetween: 16,
          },
          1024: {
            slidesPerView: 2,
            spaceBetween: 20,
          }
        }}
        // navigation={true}
        loop={true}
        // pagination={true}
        // freeMode={true}
        modules={[FreeMode, Navigation, Pagination, Autoplay]}
        className="w-full swiper"
        onSwiper={(swiper) => (swiperRef.current = swiper)}
        onSlideChange={(swiper) => {
          const indexAttr = swiper.slides[swiper.activeIndex]?.getAttribute('data-swiper-slide-index');
          const real = indexAttr ? parseInt(indexAttr) : 0;
          setRealIndex(real);
        }}
        style={{
          // @ts-ignore
            // "--swiper-navigation-color": "#c5131c",
            // "--swiper-navigation-sides-offset": "0px",
            // "--swiper-pagination-color": "#c5131c",
            // "--swiper-pagination-bullet-size": "10px",
            // "--swiper-pagination-bullet-inactive-color": "#ffffff",
        }}
      >
        {products.map((value, index) => (
          <SwiperSlide key={value.name.concat(` ${index}`)}>
            <Dialog>
              <DialogTrigger className='w-full'>
                <div className="w-full h-72 flex items-center justify-center">
                  <div className="w-full h-full bg-foreground/60 rounded-2xl overflow-hidden shadow-lg border-2 border-background/50 hover:border-primary transition-all duration-500 ease-in-out p-4">
                    <div className="grid grid-cols-2 gap-6 h-full items-center">
                      <div className="col-span-1 flex items-center justify-center">
                        <Image
                          src={
                            value.cover_img.startsWith("/uploads/")
                              ? `${process.env.NEXT_PUBLIC_ROOT_URL}${value.cover_img}`
                              : value.cover_img || "/diverse-products-still-life.png"
                          }
                          alt={value.name}
                          width={300}
                          height={300}
                          className="w-full h-auto max-h-64 object-contain"
                        />
                      </div>

                      <div className="col-span-1 flex flex-col justify-center h-full overflow-y-auto text-start">
                <h3 className="text-2xl md:text-3xl font-bold text-background text-balance mb-2 line-clamp-2">
  {value.name}
</h3>

                        {value.description &&
                          value.description !== "" &&
                          value.description !== "-" &&
                          value.description !== "<p></p>" &&
                          value.description !== "<p>-</p>" && (
                            <div className="tiptap text-sm md:text-base line-clamp-4 overflow-hidden">
                              <div
                                dangerouslySetInnerHTML={{
                                  __html: DOMPurify.sanitize(value.description, {
                                    ALLOWED_TAGS: [
                                      "a",
                                      "b",
                                      "i",
                                      "u",
                                      "em",
                                      "strong",
                                      "p",
                                      "div",
                                      "span",
                                      "ul",
                                      "ol",
                                      "li",
                                      "br",
                                    ],
                                    ALLOWED_ATTR: ["href", "target", "rel", "class", "id", "style"],
                                  }),
                                }}
                              />
                            </div>
                          )}
                      </div>
                    </div>
                  </div>
                </div>
              </DialogTrigger>
              <DialogContent className="w-full rounded-2xl md:max-w-6xl h-3/4 flex items-center justify-center p-2">
                <DialogHeader className="h-full flex flex-col justify-center w-full">
                  <DialogTitle>
                    <Image src={'/images/roadmaster/logo_roadmaster_black.webp'} alt="Logo Roadmaster Black" width={100} height={100} className="absolute md:w-20 w-12 h-fit top-3 left-3 text-white uppercase z-10 text-sm md:text-base lg:text-lg"/>
                  </DialogTitle>
                  <DialogDescription className="flex-1 overflow-hidden w-full">
                    <div className="block md:grid md:grid-cols-2 h-full w-full overflow-hidden">
                      {/* LEFT COLUMN - IMAGE */}
                      <div className="relative h-1/2 md:h-full w-full flex items-center justify-center">
                        <Image
                          src={
                            value.cover_img.startsWith("/uploads/")
                              ? `${process.env.NEXT_PUBLIC_ROOT_URL}${value.cover_img}`
                              : value.cover_img
                          }
                          alt={value.name}
                          fill
                          className="object-contain h-full w-full"
                        />
                      </div>

                      {/* RIGHT COLUMN - TEXT */}
                      <div className="flex flex-col justify-start md:justify-center overflow-y-auto p-6 h-1/2 md:h-full">
                        <h3 className="text-3xl font-bold text-foreground md:pb-0 pb-10 line-clamp-2 md:text-start text-center">
                          {value.name}
                        </h3>

                        {value.description &&
                          value.description !== "" &&
                          value.description !== "-" &&
                          value.description !== "<p></p>" &&
                          value.description !== "<p>-</p>" && (
                            <div className="tiptapLightbox text-sm md:text-base overflow-y-auto max-h-[60vh] md:max-h-full text-start">
                              <div
                                dangerouslySetInnerHTML={{
                                  __html: DOMPurify.sanitize(value.description, {
                                    ALLOWED_TAGS: [
                                      "a",
                                      "b",
                                      "i",
                                      "u",
                                      "em",
                                      "strong",
                                      "p",
                                      "div",
                                      "span",
                                      "ul",
                                      "ol",
                                      "li",
                                      "br",
                                    ],
                                    ALLOWED_ATTR: [
                                      "href",
                                      "target",
                                      "rel",
                                      "class",
                                      "id",
                                      "style",
                                    ],
                                  }),
                                }}
                              />
                            </div>
                          )}
                      </div>
                    </div>
                  </DialogDescription>
                </DialogHeader>
              </DialogContent>
            </Dialog>
            
          </SwiperSlide>
        ))}
      </Swiper>
      <div className="h-full w-full pt-4 z-10 flex justify-center items-center gap-6">
        {products.map((_, index) => (
          // <button
          //   key={index}
          //   onClick={() => swiperRef.current?.slideToLoop(index)}
          //   className={`w-12 h-2 rounded-none transition-all duration-300 ${
          //     realIndex === index ? 'bg-primary scale-125' : 'bg-background'
          //   }`}
          // ></button>
          <button
          key={index}
          onClick={() => swiperRef.current?.slideToLoop(index)}
          className={`h-1.5 transition-all duration-500 rounded-full ${
            realIndex === index
              ? "w-12 bg-primary"
              : "w-4 bg-background/60 hover:w-8 hover:bg-background/80"
          }`}
          aria-label={`Go to page ${index + 1}`}
        />
        ))}
      </div>
    </div>
  );
}
