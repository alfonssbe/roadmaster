"use client"

import { Swiper, SwiperClass, SwiperSlide } from 'swiper/react';

import 'swiper/css';
import 'swiper/css/navigation';

// import required modules
import { Navigation, FreeMode } from 'swiper/modules';
import { Card, CardContent } from './card';
import Lightbox from 'yet-another-react-lightbox'
import Zoom from 'yet-another-react-lightbox/plugins/zoom'
import Thumbnails from 'yet-another-react-lightbox/plugins/thumbnails'
import Captions from "yet-another-react-lightbox/plugins/captions";
import { useRef, useState } from 'react';
import { LazyImageCustom } from '../lazyImageCustom';
import { FilesProp } from '../../types';

type PropType = {
  drawing: FilesProp[],
  graph: FilesProp[],
  impedance: FilesProp[],
}

const SwiperCarouselGraphImpedance: React.FC<PropType> = (props) => {
  const { drawing, graph, impedance } = props
  const [lightboxOpen, setLightboxOpen] = useState(false)
  const [lightboxIndex, setLightboxIndex] = useState(0)

  const openLightbox = (index: number) => {
    setLightboxIndex(index)
    setLightboxOpen(true)
  }
  const drawingSlides = drawing && drawing.length > 0 
  ? drawing.map((item, index) => ({
      src: item.url,
      title: `${item.name} - ${index + 1}`,
      alt: `${item.name} - ${index + 1}`
    }))
  : [];

const graphSlides = graph && graph.length > 0 
  ? graph.map((item, index) => ({
      src: item.url,
      title: `${item.name} - ${index + 1}`,
      alt: `${item.name} - ${index + 1}`
    }))
  : [];

const impedanceSlides = impedance && impedance.length > 0 
  ? impedance.map((item, index) => ({
      src: item.url,
      title: `${item.name} - ${index + 1}`,
      alt: `${item.name} - ${index + 1}`
    }))
  : [];

  const originalSlides  = [...drawingSlides, ...graphSlides, ...impedanceSlides];
  const slides = originalSlides.length === 2 ? [...originalSlides, ...originalSlides] : originalSlides;
  const repeated = originalSlides.length !== slides.length
  const swiperRef = useRef<SwiperClass | null>(null);
  const [realIndex, setRealIndex] = useState(0);
  return (
    <>
      <Swiper
        centeredSlides={true}
        loop={true}
        spaceBetween={0}
        onSwiper={(swiper) => (swiperRef.current = swiper)}
        onSlideChange={(swiper) => {
          const indexAttr = swiper.slides[swiper.activeIndex]?.getAttribute('data-swiper-slide-index');
          const real = indexAttr ? parseInt(indexAttr) : 0;
          setRealIndex(real);
        }}
        navigation={true}
        modules={[Navigation, FreeMode]}
        className="mySwiper2 h-full flex items-center"
        style={{
          // @ts-ignore
            "--swiper-navigation-color": "#f2b90f",
            "--swiper-navigation-size": "30px",
            "--swiper-navigation-sides-offset": "0px"
        }}
      >
          {drawing && drawing.length > 0 && drawing.map((item, index) => (
            <SwiperSlide key={`${item.name} - ${index + 1}`}>
                  <div className="h-full flex justify-center items-center cursor-pointer"
                    onClick={() => openLightbox(0)}>
                  <Card className="border-none h-full w-full flex items-center justify-center bg-transparent hover:bg-slate-200">
                      <CardContent className="p-6 flex items-center justify-center w-full h-full">
                        <div className="relative overflow-hidden flex items-center justify-center h-[200px] w-full">
                          <LazyImageCustom
                            src={item.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item.url}` : item.url} 
                            alt={`${item.name} - ${index + 1}`} 
                            width={500}
                            height={500}
                            classname="max-h-full max-w-full object-contain"
                          />
                          {/* <Image 
                            src={item.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item}` : item} 
                            alt={alt.concat(" - Drawing")} 
                            width={1000}
                            height={1000}
                            className="object-contain max-h-full max-w-full"
                            priority
                          /> */}
                        </div>
                      </CardContent>
                    </Card>
                  </div>
            </SwiperSlide>
          ))}
          {graph && graph.length > 0 && graph.map((item, index) => (
            <SwiperSlide key={`${item.name} - ${index + 1}`}>
             
                <div className="h-full flex justify-center items-center cursor-pointer"
                    onClick={() => drawing && drawing.length > 0? openLightbox(drawing.length + 1) : openLightbox(0)}>
                    <Card className="border-none h-full w-full flex items-center justify-center bg-transparent hover:bg-slate-200">
                      <CardContent className="p-6 flex items-center justify-center w-full h-full">
                        <div className="relative overflow-hidden flex items-center justify-center h-[200px] w-full">
                          <LazyImageCustom
                            src={item.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item.url}` : item.url} 
                            alt={`${item.name} - ${index + 1}`} 
                            width={500}
                            height={500}
                            classname="max-h-full max-w-full object-contain"
                          />
                          {/* <Image 
                            src={item.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item}` : item} 
                            alt={alt.concat(" - Frequency Response")} 
                            width={1000}
                            height={1000}
                            className="object-contain max-h-full max-w-full"
                            priority
                          /> */}
                        </div>
                      </CardContent>
                    </Card>
                  </div>
               
            </SwiperSlide>
          ))}
          {impedance && impedance.length > 0 && impedance.map((item, index) => (
            <SwiperSlide key={`${item.name} - ${index + 1}`}>
                <div className="h-full flex justify-center items-center cursor-pointer"
                onClick={() => drawing && drawing.length > 0 && graph && graph.length > 0? openLightbox(2) : (drawing && drawing.length > 0) || (graph && graph.length>0) ? openLightbox(1)  : openLightbox(0)}>
                    <Card className="border-none h-full w-full flex items-center justify-center bg-transparent hover:bg-slate-200">
                      <CardContent className="p-6 flex items-center justify-center w-full h-full">
                        <div className="relative overflow-hidden flex items-center justify-center h-[200px] w-full">
                          <LazyImageCustom
                            src={item.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item.url}` : item.url} 
                            alt={`${item.name} - ${index + 1}`} 
                            width={500}
                            height={500}
                            classname="max-h-full max-w-full object-contain"
                          />
                          {/* <Image 
                            src={item.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item}` : item} 
                            alt={alt.concat(" - Impedance")} 
                            width={1000}
                            height={1000}
                            className="object-contain max-h-full max-w-full"
                            // priority={indexParent === 0}
                          /> */}
                        </div>
                      </CardContent>
                    </Card>
                  </div>
            </SwiperSlide>
          ))}
         <>
          {repeated && drawing?.length > 0 &&
            drawing.map((item, index) => (
              <SwiperSlide key={`${item.name} - ${index + 1} - Drawing`}>
                <div
                  className="h-full flex justify-center items-center cursor-pointer"
                  onClick={() => openLightbox(0)}
                >
                  <Card className="border-none h-full w-full flex items-center justify-center bg-transparent hover:bg-slate-200">
                    <CardContent className="p-6 flex items-center justify-center w-full h-full">
                      <div className="relative overflow-hidden flex items-center justify-center h-[200px] w-full">
                        <LazyImageCustom
                          src={item.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item.url}` : item.url}
                          alt={`${item.name} - ${index + 1}`}
                          width={500}
                          height={500}
                          classname="max-h-full max-w-full object-contain"
                        />
                      </div>
                    </CardContent>
                  </Card>
                </div>
              </SwiperSlide>
            ))}

          {graph?.length > 0 &&
            graph.map((item, index) => (
              <SwiperSlide key={`${item.name} - ${index + 1} - Graph`}>
                <div
                  className="h-full flex justify-center items-center cursor-pointer"
                  onClick={() =>
                    drawing?.length > 0
                      ? openLightbox(drawing.length + index)
                      : openLightbox(index)
                  }
                >
                  <Card className="border-none h-full w-full flex items-center justify-center bg-transparent hover:bg-slate-200">
                    <CardContent className="p-6 flex items-center justify-center w-full h-full">
                      <div className="relative overflow-hidden flex items-center justify-center h-[200px] w-full">
                        <LazyImageCustom
                          src={item.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item.url}` : item.url}
                          alt={`${item.name} - ${index + 1}`}
                          width={500}
                          height={500}
                          classname="max-h-full max-w-full object-contain"
                        />
                      </div>
                    </CardContent>
                  </Card>
                </div>
              </SwiperSlide>
            ))}

          {impedance?.length > 0 &&
            impedance.map((item, index) => {
              const baseIndex =
                (drawing?.length || 0) + (graph?.length || 0) + index;

              return (
                <SwiperSlide key={`${item.name} - ${index + 1} - Impedance`}>
                  <div
                    className="h-full flex justify-center items-center cursor-pointer"
                    onClick={() => openLightbox(baseIndex)}
                  >
                    <Card className="border-none h-full w-full flex items-center justify-center bg-transparent hover:bg-slate-200">
                      <CardContent className="p-6 flex items-center justify-center w-full h-full">
                        <div className="relative overflow-hidden flex items-center justify-center h-[200px] w-full">
                          <LazyImageCustom
                            src={item.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${item.url}` : item.url}
                            alt={`${item.name} - ${index + 1}`}
                            width={500}
                            height={500}
                            classname="max-h-full max-w-full object-contain"
                          />
                        </div>
                      </CardContent>
                    </Card>
                  </div>
                </SwiperSlide>
              );
            })}
        </>
      </Swiper>

      <div className="z-10 gap-2 flex justify-center items-center pt-2">
        {slides.map((_, index) => (
          repeated && index < originalSlides.length &&
          <button
            key={index}
            onClick={() => swiperRef.current?.slideToLoop(index)}
            className={`w-2 h-2 rounded-full transition-all duration-300 ${
              realIndex === index || (repeated && realIndex === (index + originalSlides.length)) ? 'bg-foreground scale-125' : 'bg-slate-300'
            }`}
          ></button>
        ))}
      </div>

        <Lightbox
          open={lightboxOpen}
          close={() => setLightboxOpen(false)}
          index={lightboxIndex}
          slides={slides}
          plugins={[Zoom, Thumbnails, Captions]}
        />
    </>
  );
}

export default SwiperCarouselGraphImpedance