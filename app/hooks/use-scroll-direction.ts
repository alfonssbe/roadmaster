"use client"

import { useEffect, useState } from "react"

export function useScrollDirection() {
  const [isVisible, setIsVisible] = useState(true)
  const [lastScrollY, setLastScrollY] = useState(0)

  useEffect(() => {
    const handleScroll = () => {
      const currentScrollY = window.scrollY

      // Show navbar when scrolling up
      if (currentScrollY < lastScrollY) {
        setIsVisible(true)
      }
      // Hide navbar when scrolling down (but not at the top)
      else if (currentScrollY > lastScrollY && currentScrollY > 50) {
        setIsVisible(false)
      }

      setLastScrollY(currentScrollY)
    }

    window.addEventListener("scroll", handleScroll, { passive: true })
    return () => window.removeEventListener("scroll", handleScroll)
  }, [lastScrollY])

  return isVisible
}
