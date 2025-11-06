import { Swiper, SwiperSlide } from 'swiper/react';

// Import Swiper styles
import 'swiper/css';
import 'swiper/css/free-mode';
import 'swiper/css/navigation';

// import required modules
import { FreeMode, Navigation, Pagination, Autoplay } from "swiper/modules"
import Image from 'next/image';
import { ProductWithRelations } from '../../types';
import DOMPurify from 'dompurify';
import "./styles.scss";
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';

interface SwiperCarouselProductProps {
  products: ProductWithRelations[];
}

export default function SwiperCarouselSelectedCat({ products }: SwiperCarouselProductProps) {
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
          },
          1536: {
            slidesPerView: 2.5,
            spaceBetween: 20,
          },
        }}
        navigation={true}
        freeMode={true}
        modules={[FreeMode, Navigation, Pagination, Autoplay]}
        className="w-full mySwiper"
        style={{
          // @ts-ignore
            "--swiper-navigation-color": "#c5131c",
            "--swiper-navigation-sides-offset": "0px"
        }}
      >
        {products.map((value, index) => (
          <SwiperSlide key={index}>
            <Dialog>
              <DialogTrigger>
                <div className="h-80 flex items-center justify-center">
                  <div className="w-full h-full bg-foreground/60 rounded-2xl overflow-hidden shadow-lg border-2 border-background/50 hover:border-background transition-all duration-500 ease-in-out">
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
                        <h3 className="text-2xl md:text-3xl font-bold text-background text-balance pb-4 line-clamp-2">
                          {value.name}
                        </h3>
                        {value.description &&
                          value.description !== "" &&
                          value.description !== "-" &&
                          value.description !== "<p></p>" &&
                          value.description !== "<p>-</p>" && (
                            <div className="tiptap text-sm md:text-base line-clamp-4 overflow-hidden h-24">
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
              <DialogContent className='w-full max-w-6xl h-3/4 flex items-center justify-center'>  {/* Full width with max constraint */}
                <DialogHeader>
                  <DialogTitle></DialogTitle>
                  <DialogDescription>
                    <div className="w-full h-full rounded-2xl overflow-hidden">
                    <div className="grid grid-cols-2 gap-6 h-full items-center">
                      <div className="col-span-1 flex items-center justify-center h-full">
                        <Image
                          src={
                            value.cover_img.startsWith("/uploads/")
                              ? `${process.env.NEXT_PUBLIC_ROOT_URL}${value.cover_img}`
                              : value.cover_img
                          }
                          alt={value.name}
                          width={1000}
                          height={1000}
                          // fill
                          className=" min-h-full w-fit object-contain"
                        />
                      </div>

                      <div className="col-span-1 flex flex-col justify-center h-full overflow-y-auto">
                        <h3 className="text-2xl md:text-4xl font-bold text-foreground text-balance pb-4 line-clamp-2">
                          {value.name}
                        </h3>
                        {value.description &&
                          value.description !== "" &&
                          value.description !== "-" &&
                          value.description !== "<p></p>" &&
                          value.description !== "<p>-</p>" && (
                            <div className="tiptapLightbox text-sm md:text-base overflow-hidden">
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
                  </DialogDescription>
                </DialogHeader>
              </DialogContent>
            </Dialog>
            
          </SwiperSlide>
        ))}
      </Swiper>
    </div>
  );
}
