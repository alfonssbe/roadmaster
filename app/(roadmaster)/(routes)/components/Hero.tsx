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
        <div className="bg-[url(/images/roadmaster/hero-image.jpeg)] bg-cover bg-center bg-no-repeat w-screen h-fit">
          <div className="bg-foreground/30 w-screen h-screen backdrop-brightness-50"></div>
        </div>
        <div className="absolute inset-0 flex items-center justify-center z-10 md:mt-8">
          <div className="text-center text-white max-w-3xl px-6">
            <h1 className="text-3xl md:text-5xl font-bold mb-6 leading-tight">Home Audio Dengan Suara Berkualitas & Desain Elegan</h1>
            <p className="text-base md:text-lg leading-relaxed mb-8 text-background/70">
              Rasakan kejernihan dan kekuatan suara Roadmaster, menghadirkan pengalaman audio luar biasa di setiap ruang!
            </p>
          </div>
        </div>
      </motion.div>
    </div>
  )
}
