"use client"

import { useEffect } from "react"
import Footer from "./components/footer";
import Lenis from 'lenis'
import Navbar from "../components/navbar";
import { useScrollDirection } from "@/app/hooks/use-scroll-direction";
import TentangKami from "./components/about";
import Hero from "./components/Hero";
import Featured from "./components/featured";

export default function Home() {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "Organization",
    "name": "Roadmaster",
    "url": `${baseUrl}`,
    "logo": `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
    "sameAs": [
      "https://www.instagram.com/roadmasterspeaker",
    ]
  };
  const isVisible = useScrollDirection()


  useEffect(() => {
    const lenis = new Lenis()

    function raf(time: any) {
      lenis.raf(time)
      requestAnimationFrame(raf)
    }

    requestAnimationFrame(raf)
  }, [])

  return (
    <main>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <h1 className='sr-only'>Welcome to Roadmaster Official Website!</h1>
      <div className={`fixed top-0 left-0 right-0 z-50 p-6 transition-transform duration-700 ${
        isVisible ? "translate-y-0" : "-translate-y-full"
      }`}>
        <Navbar />
      </div>
      <Hero />
      <TentangKami/>
      <Featured />
      <Footer />
    </main>
  )
}
