"use client"

import { useEffect, useState } from "react"
import { ChevronLeft, ChevronRight } from "lucide-react"
import Image from "next/image"
import { Button } from "@/components/ui/button"
import { ProductCard } from "./product-card"
import getAllProductsAndCategory from "../../actions/get-all-products-and-category"
import { AllCategory, AllProductCategory } from "@prisma/client"
import { ProductWithRelations } from "../../types"
import SwiperCarouselSelectedCat from "../../components/ui/swipercarouselSelectedCat"
import { Loader } from "../../components/ui/loader"

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_PRODUCTS_AND_CATEGORY}`;

const speakerData = {
  "Trolley Speaker": [
    {
      id: 1,
      name: "PowerTroll Max",
      description: "High-capacity portable speaker with 360° sound",
      image: "/trolley-speaker-on-wheels.jpg",
    },
    {
      id: 2,
      name: "TrollMove Pro",
      description: "Lightweight trolley design with extended battery life",
      image: "/portable-trolley-speaker-black.jpg",
    },
    {
      id: 3,
      name: "StageCart Elite",
      description: "Professional event speaker with USB connectivity",
      image: "/stage-trolley-speaker-professional.jpg",
    },
  ],
  "Reborn Series": [
    {
      id: 4,
      name: "Reborn Genesis",
      description: "Vintage meets modern in this retro-inspired speaker",
      image: "/retro-vintage-speaker-design.jpg",
    },
    {
      id: 5,
      name: "Reborn Classic",
      description: "Timeless design with contemporary audio technology",
      image: "/classic-wooden-speaker.jpg",
    },
    {
      id: 6,
      name: "Reborn Echo",
      description: "Warm acoustic sound with elegant styling",
      image: "/elegant-speaker-warm-tone.jpg",
    },
  ],
  "Pro Series": [
    {
      id: 7,
      name: "ProStudio X",
      description: "Studio-grade monitoring with precision acoustics",
      image: "/professional-studio-speaker-black.jpg",
    },
    {
      id: 8,
      name: "ProStudio Z",
      description: "Advanced tuning for critical audio work",
      image: "/professional-audio-monitor-speaker.jpg",
    },
    {
      id: 9,
      name: "ProLive",
      description: "Live performance speaker with dynamic response",
      image: "/live-performance-speaker-system.jpg",
    },
  ],
  "Party Series": [
    {
      id: 10,
      name: "PartyBurst Ultra",
      description: "RGB lighting with immersive bass and LED effects",
      image: "/party-speaker-with-led-lights.jpg",
    },
    {
      id: 11,
      name: "PartyBeat Pro",
      description: "Interactive sound effects with wireless connectivity",
      image: "/colorful-party-speaker-with-lights.jpg",
    },
    {
      id: 12,
      name: "PartyVibe Max",
      description: "Multi-zone sound system with app control",
      image: "/party-speaker-system-colorful.jpg",
    },
  ],
}

const categoryImages = {
  "Trolley Speaker": "/trolley-speaker-on-wheels.jpg",
  "Reborn Series": "/retro-vintage-speaker-design.jpg",
  "Pro Series": "/professional-studio-speaker-black.jpg",
  "Party Series": "/party-speaker-with-led-lights.jpg",
}

export default function Featured() {
  const [allCat, setAllCat] = useState<AllCategory[]>([])
  const [activeCategory, setActiveCategory] = useState<AllCategory | null>(null)
  const [allProd, setAllProd] = useState<ProductWithRelations[]>([])
  const [allSelectedProd, setAllSelectedProd] = useState<ProductWithRelations[]>([])
  const [loading, setLoading] = useState<boolean>(true)
  // In your component:
  const [imageKey, setImageKey] = useState(0)

  useEffect(() => {
    setImageKey(prev => prev + 1)
  }, [activeCategory?.id]) // Change key when category changes

  const handleCategoryChange = (category: AllCategory) => {
    setActiveCategory(category)
    let tempFirst : ProductWithRelations[] = []
    allProd.forEach((val: ProductWithRelations) => {
      const found = val.allCat.some((cat: AllProductCategory) => cat.categoryId === category.id);
      if (found) tempFirst.push(val);
    });
    setAllSelectedProd(tempFirst)
  }

  useEffect(() => {
    const fetchData = async () => {
      try {
        let [tempProd, tempAllCat] : [ProductWithRelations[], AllCategory[]] = await getAllProductsAndCategory(API);
        setAllCat(tempAllCat)
        setAllProd(tempProd)
        setActiveCategory(tempAllCat[0])
        let tempFirst : ProductWithRelations[] = []
        tempProd.forEach((val: ProductWithRelations) => {
          const found = val.allCat.some((cat: AllProductCategory) => cat.categoryId === tempAllCat[0].id);
          val.allCat.map((val) => {
          })
          if (found) tempFirst.push(val);
        });
        setAllSelectedProd(tempFirst)
        setLoading(false)
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();
  }, []); 

  return (
    <div className="md:h-screen min-h-3/4">
      {/* <div className="container mx-auto px-4 py-20"> */}
     {/* <div className="flex flex-col lg:flex-row lg:justify-between lg:items-center min-h-screen bg-background"> */}
      {loading ?
        <div className="w-full h-full flex items-center justify-center bg-foreground/90">
          <Loader />
        </div>
      :
        <div className="md:h-screen h-3/4 min-w-screen relative">
          {activeCategory && (
            <div className="absolute inset-0">
              <Image
                key={imageKey}
                src={
                  activeCategory.thumbnail_url.startsWith('/uploads/')
                    ? `${process.env.NEXT_PUBLIC_ROOT_URL}${activeCategory.thumbnail_url}`
                    : activeCategory.thumbnail_url
                }
                alt={activeCategory.name}
                fill
                className="object-cover transition-opacity duration-500"
                priority
              />
              <div className="absolute inset-0 bg-black/30" />
            </div>
          )}

          <div className="relative z-10">
            <div className="flex flex-wrap gap-2 md:gap-4 p-6 md:p-8 lg:p-12 justify-center">
              <div className="text-background md:text-2xl text-lg font-bold w-full flex justify-center items-center text-center text-shadow-2xs">Pilih Serimu!</div>
              {allCat.map((category) => (
                <Button
                  key={category.name}
                  onClick={() => handleCategoryChange(category)}
                  className={`hover:cursor-pointer px-4 md:px-6 py-2 md:py-3 rounded-lg font-semibold text-sm md:text-base transition-all duration-300 ${
                    activeCategory === category ? "bg-primary text-background" : ""
                  } hover:bg-primary`}
                  variant={"secondary"}
                >
                  {category.name}
                </Button>
              ))}
            </div>

            {/* Products and content section */}
            <div className="p-8 md:p-12 lg:p-16">
              {/* Category title and description */}
              <div className="mb-12">
                <h1 className="sr-only text-4xl md:text-5xl font-bold text-background mb-2">{activeCategory?.name ?? ''}</h1>
                {/* <p className="text-lg text-white/80">{activeCategory?.description ?? ''}</p> */}
                <div className="text-background">
                <SwiperCarouselSelectedCat products={allSelectedProd} />
                </div>
              </div>

            </div>
          </div>
        </div>
      }

    {/* </div> */}
    
      {/* </div> */}
    </div>
  )
}
