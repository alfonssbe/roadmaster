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
      {/* Background Parallax */}
      <div className="fixed top-0 left-0 w-full h-full z-0">
        <motion.div style={{ y }} className="relative w-full h-full scale-125">
          <div className="bg-[url(/images/roadmaster/bg-cover.webp)] bg-cover bg-center bg-no-repeat w-full h-screen">
            <div className="bg-foreground/30 w-full h-full backdrop-brightness-50"></div>
          </div>
        </motion.div>
      </div>

      <div className="relative z-10 md:grid md:grid-cols-2 flex flex-col items-center justify-center gap-8 lg:gap-0 lg:px-12 md:px-8 px-4 container mx-auto max-w-6xl">
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.2 }}
          viewport={{ once: true, amount: 0.3 }}
          className="flex flex-col items-center md:items-end md:text-right gap-4 md:order-1 order-2"
        >
          <p className="text-background text-xl md:text-2xl lg:text-3xl leading-relaxed drop-shadow-lg max-w-lg font-bold md:text-end text-center">
            Roadmaster menghadirkan pengalaman audio yang kaya dan kuat. Bass yang dalam dan berkarakter menjadikan
            setiap hiburan di rumah terasa lebih hidup dan memikat.
          </p>

          <div className="w-12 h-1 bg-background/40 rounded-full mt-2"></div>
        </motion.div>

        <motion.div
          initial={{ opacity: 0, y: 20 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.2 }}
          viewport={{ once: true, amount: 0.3 }}
          className="flex justify-center md:order-2 order-1"
        >
          <div className="relative">
            <Image
              src="/images/roadmaster/tentang-kami.webp"
              alt="Tentang Roadmaster"
              width={400}
              height={400}
              className="w-56 md:w-80 h-auto"
            />
          </div>
        </motion.div>
      </div>
    </div>
  )
}
