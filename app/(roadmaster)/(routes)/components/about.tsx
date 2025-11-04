"use client"

import Image from "next/image"
import { useScroll, useTransform, motion } from "framer-motion"
import { useRef } from "react"

export default function TentangKami() {
  const container = useRef<HTMLDivElement | null>(null)
  const { scrollYProgress } = useScroll({
    target: container,
    offset: ["start end", "end start"],
  })
  const y = useTransform(scrollYProgress, [0, 1], ["-10vh", "10vh"])

  return (
    <div
      ref={container}
      className="relative flex items-center justify-center h-screen overflow-hidden"
      style={{ clipPath: "polygon(0% 0, 100% 0%, 100% 100%, 0 100%)" }}
    >
      <div className="fixed top-[-10vh] left-0 h-[120vh] w-full">
        <motion.div style={{ y }} className="relative w-full h-full">
          <Image src="/images/roadmaster/bg-cover.webp" fill alt="Background Cover Tentang Kami" style={{ objectFit: "cover" }} />
        </motion.div>
      </div>

      <Image src={'/images/roadmaster/logo_roadmaster_2.webp'} alt="Logo Roadmaster 2" width={100} height={100} className="absolute top-6 right-6 text-white uppercase z-10 text-sm md:text-base lg:text-lg"/>

      <p className="absolute bottom-6 right-6 text-white text-xl sm:text-2xl md:text-3xl lg:text-4xl xl:text-5xl max-w-xs sm:max-w-md md:max-w-lg lg:max-w-xl xl:max-w-5xl z-10 text-end text-shadow-lg/30">
        Roadmaster menghadirkan pengalaman audio yang kaya dan kuat. Bass yang dalam dan berkarakter menjadikan setiap hiburan di rumah terasa lebih hidup dan memikat.
      </p>
    </div>
  )
}
