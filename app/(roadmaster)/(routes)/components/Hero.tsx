"use client"
import Image from "next/image"
import { useScroll, useTransform, motion } from "framer-motion"
import { useRef } from "react"
import Header from "./header"

export default function Hero() {
  const container = useRef<HTMLDivElement | null>(null)
  const { scrollYProgress } = useScroll({
    target: container,
    offset: ["start start", "end start"],
  })

  const y = useTransform(scrollYProgress, [0, 1], ["0vh", "80vh"])

  return (
    <div className="h-screen overflow-hidden">
      {/* <Header /> */}
      <motion.div ref={container} style={{ y }} className="relative h-full">
        <div className="bg-[url(/images/roadmaster/hero-image.jpg)] w-screen h-screen">
          <div className="bg-foreground/30 w-screen h-screen backdrop-brightness-50"></div>
        </div>
        <div className="absolute inset-0 flex items-center justify-start z-10">
          <div className="text-left text-white max-w-3xl px-6">
            <h1 className="text-3xl md:text-5xl font-bold mb-6 leading-tight">Home Audio Dengan Suara Berkualitas & Desain Elegan</h1>
            <p className="text-base md:text-lg leading-relaxed mb-8">
              Rasakan kejernihan dan kekuatan suara Roadmaster, menghadirkan pengalaman audio luar biasa di setiap ruang!
            </p>
            {/* <button className="px-4 py-2 border-2 border-white bg-transparent text-white text-sm transition-all duration-300 hover:bg-white hover:text-black cursor-pointer">
              GET STARTED
            </button> */}
          </div>
        </div>
      </motion.div>
    </div>
  )
}
