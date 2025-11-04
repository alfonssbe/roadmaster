import { Inter } from 'next/font/google'
import './globals.css'
import React from 'react'
import { Toaster } from '@/app/(roadmaster)/components/ui/toaster'
import Head from 'next/head'
import Image from 'next/image'
import { GoogleAnalytics } from '@next/third-parties/google'
import { Metadata } from 'next'
import ScrollToTop from './(roadmaster)/components/scrollToTop'
const font = Inter({ subsets: ['latin'] })

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: {
      template: '%s | Roadmaster',
      default: 'Legacy Speaker | 100% Karya Anak Bangsa',
    },
    description: 'Speaker mobil asli buatan Indonesia produksi dari CV. Sinar Baja Electric. Manjakan telinga Anda dengan suara jernih dan bass kuat!',
    keywords: 'Roadmaster, Karya Anak Bangsa, Speaker Indonesia, Loudspeaker Indonesia, Car Speaker, Audio Mobil',
    openGraph: {
      title: 'Legacy Speaker | 100% Karya Anak Bangsa',
      description: 'Speaker mobil asli buatan Indonesia produksi dari CV. Sinar Baja Electric. Manjakan telinga Anda dengan suara jernih dan bass kuat!',
      url: `${baseUrl}`,
      siteName: 'Roadmaster',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_legacy.webp`,
          width: 1200,
          height: 630,
          alt: 'Roadmaster Logo',
        },
        {
          url: `${baseUrl}/images/roadmaster/logo_legacy.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        },
      ],
      locale: 'id_ID',
      type: 'website',
    },
    twitter: {
      card: 'summary_large_image',
      title: 'Legacy Speaker | 100% Karya Anak Bangsa',
      description: 'Speaker mobil asli buatan Indonesia produksi dari CV. Sinar Baja Electric. Manjakan telinga Anda dengan suara jernih dan bass kuat!',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_legacy.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        }
      ],
    },
    alternates: {
      canonical: `${baseUrl}`,
    },
    robots: {
      index: true,
      follow: true,
      googleBot: {
        index: true,
        follow: true,
      },
    },
  }
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {

  return (
    <html lang="en">
      <Head>
      {/* <script type="application/ld+json" dangerouslySetInnerHTML={{
        __html: JSON.stringify({
          "@context": "https://schema.org",
          "@type": "Organization",
          "name": "Legacy Speaker",
          "url": "https://www.legacy.us.com",
          "logo": "https://www.legacy.us.com/images/legacy/logo_legacy.webp"
        })
      }} /> */}
        <link
          rel="preload"
          href="/images/roadmaster/navbarbg.webp"
          as="image"
        />
      </Head>
      <body className={`${font.className || ''} overflow-x-hidden`}>
      <ScrollToTop />
      <Image src={'/images/roadmaster/navbarbg.webp'} alt="Roadmaster Navigation Bar Background" width={1920} height={1080} className='-z-10 fixed md:-top-64 sm:-top-24 -top-10 left-0' priority/>
          {children}
        <Toaster />
      </body>
      <GoogleAnalytics gaId="XYZ" />
    </html>
  )
}
