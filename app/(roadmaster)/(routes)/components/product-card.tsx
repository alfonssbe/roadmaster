"use client"

import Image from "next/image"
import { ArrowRight } from "lucide-react"

interface ProductCardProps {
  id: number
  name: string
  description: string
  image: string
}

export function ProductCard({ id, name, description, image }: ProductCardProps) {
  return (
    <div className="group relative overflow-hidden rounded-xl bg-card border border-border hover:border-accent transition-all duration-300">
      {/* Image Container */}
      <div className="relative h-64 overflow-hidden bg-muted">
        <Image
          src={image || "/placeholder.svg"}
          alt={name}
          fill
          className="object-cover group-hover:scale-105 transition-transform duration-500"
        />
        <div className="absolute inset-0 bg-gradient-to-b from-black/0 via-black/0 to-black/40" />
      </div>

      {/* Content */}
      <div className="p-6 flex flex-col h-56">
        <h3 className="text-xl font-bold text-card-foreground mb-2 line-clamp-2">{name}</h3>
        <p className="text-sm text-muted-foreground mb-6 flex-grow line-clamp-2">{description}</p>

        {/* Footer */}
        <div className="flex items-center justify-between pt-4 border-t border-border">
          <span className="text-xs font-medium text-accent uppercase tracking-wider">Explore</span>
          <ArrowRight className="w-4 h-4 text-accent group-hover:translate-x-1 transition-transform" />
        </div>
      </div>
    </div>
  )
}
