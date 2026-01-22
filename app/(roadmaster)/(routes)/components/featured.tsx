"use client"

import { useEffect, useState } from "react"
import Image from "next/image"
import { Button } from "@/components/ui/button"
import getAllProductsAndCategory from "../../actions/get-all-products-and-category"
import type { allcategory, allproductcategory } from "@prisma/client"
import type { ProductWithRelations } from "../../types"
import SwiperCarouselSelectedCat from "../../components/ui/swipercarouselSelectedCat"
import { Loader } from "../../components/ui/loader"
import { motion } from "framer-motion"

const API = `${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_PRODUCTS_AND_CATEGORY}`

export default function Featured() {
  const [allCat, setAllCat] = useState<allcategory[]>([])
  const [activeCategory, setActiveCategory] = useState<allcategory | null>(null)
  const [allProd, setAllProd] = useState<ProductWithRelations[]>([])
  const [allSelectedProd, setAllSelectedProd] = useState<ProductWithRelations[]>([])
  const [loading, setLoading] = useState<boolean>(true)
  const [imageOpacity, setImageOpacity] = useState(1)
  const [displayCategory, setDisplayCategory] = useState<allcategory | null>(null)

  useEffect(() => {
    if (!activeCategory) return

    setImageOpacity(0)
    const timer = setTimeout(() => {
      setDisplayCategory(activeCategory)
      setImageOpacity(1)
    }, 400) // Wait for fade out to complete

    return () => clearTimeout(timer)
  }, [activeCategory]) // Updated dependency array

  useEffect(() => {
    const fetchData = async () => {
      try {
        const [tempProd, tempAllCat]: [ProductWithRelations[], allcategory[]] = await getAllProductsAndCategory(API)
        setAllCat(tempAllCat)
        setAllProd(tempProd)
        setActiveCategory(tempAllCat[0] ?? null)
        const tempFirst: ProductWithRelations[] = []
        tempProd.forEach((val: ProductWithRelations) => {
          const found = val.allCat.some((cat: allproductcategory) => cat.categoryId === tempAllCat[0]?.id)
          if (found) tempFirst.push(val)
        })
        setAllSelectedProd(tempFirst)
        setLoading(false)
      } catch (error) {
        console.error("Error fetching data:", error)
      }
    }

    fetchData()
  }, [])

  const handleCategoryChange = (category: allcategory) => {
    setActiveCategory(category)
    const tempFirst: ProductWithRelations[] = []
    allProd.forEach((val: ProductWithRelations) => {
      const found = val.allCat.some((cat: allproductcategory) => cat.categoryId === category.id)
      if (found) tempFirst.push(val)
    })
    setAllSelectedProd(tempFirst)
  }

  return (
    <div className="md:h-screen min-h-3/4">
      {loading ? (
        <div className="w-full h-full flex items-center justify-center bg-foreground/90">
          <Loader />
        </div>
      ) : (
        <div className="md:h-screen h-3/4 min-w-screen relative">
          {displayCategory && (
            <div className="absolute inset-0">
              <Image
                src={
                  displayCategory.thumbnail_url.startsWith("/uploads/")
                    ? `${process.env.NEXT_PUBLIC_ROOT_URL}${displayCategory.thumbnail_url}`
                    : displayCategory.thumbnail_url
                }
                alt={displayCategory.name}
                fill
                className="object-cover transition-opacity duration-700"
                style={{ opacity: imageOpacity }}
                priority
              />
              <div className="absolute inset-0 bg-black/30" />
            </div>
          )}

          <div className="relative z-10">
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.6, delay: 0.5 }}
              viewport={{ once: true, amount: 0.3 }}
            >
              <div className="flex flex-wrap gap-2 md:gap-4 p-6 md:p-8 lg:p-12 justify-center">
                <div className="text-background md:text-2xl text-lg font-bold w-full flex justify-center items-center text-center text-shadow-2xs">
                  Pilih Serimu!
                </div>
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

              <div className="p-8 md:p-12 lg:p-16">
                <div className="mb-12">
                  <h1 className="sr-only text-4xl md:text-5xl font-bold text-background mb-2">
                    {activeCategory?.name ?? ""}
                  </h1>
                  <div className="text-background">
                    <SwiperCarouselSelectedCat products={allSelectedProd} />
                  </div>
                </div>
              </div>
            </motion.div>
          </div>
        </div>
      )}
    </div>
  )
}
