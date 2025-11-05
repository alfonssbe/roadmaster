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
      default: 'Roadmaster | Audio Berkualitas Tinggi untuk Hiburan Anda',
    },
    description: 'Roadmaster menawarkan perangkat audio dengan kualitas suara luar biasa. Nikmati musik, film, dan hiburan lainnya di mana saja dengan desain elegan dan kemudahan penggunaan. Temukan pilihan yang sesuai dengan kebutuhan Anda di Roadmaster.',
    keywords: 'audio, hiburan, kualitas suara, roadmaster, speaker party',
    openGraph: {
      title: 'Roadmaster | Audio Berkualitas Tinggi untuk Hiburan Anda',
      description: 'Roadmaster menawarkan perangkat audio dengan kualitas suara luar biasa. Nikmati musik, film, dan hiburan lainnya di mana saja dengan desain elegan dan kemudahan penggunaan. Temukan pilihan yang sesuai dengan kebutuhan Anda di Roadmaster.',
      url: `${baseUrl}`,
      siteName: 'Roadmaster',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
          width: 1200,
          height: 630,
          alt: 'Roadmaster Logo',
        },
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
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
      title: 'Roadmaster | Audio Berkualitas Tinggi untuk Hiburan Anda',
      description: 'Roadmaster menawarkan perangkat audio dengan kualitas suara luar biasa. Nikmati musik, film, dan hiburan lainnya di mana saja dengan desain elegan dan kemudahan penggunaan. Temukan pilihan yang sesuai dengan kebutuhan Anda di Roadmaster.',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
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
        <link
          rel="preload"
          href="/images/roadmaster/navbarbg.webp"
          as="image"
        />
      </Head>
      <body className={`${font.className || ''} overflow-x-hidden`}>
      <ScrollToTop />
      {/* <Image src={'/images/roadmaster/navbarbg.webp'} alt="Roadmaster Navigation Bar Background" width={1920} height={1080} className='-z-10 fixed md:-top-64 sm:-top-24 -top-10 left-0' priority/> */}
          {children}
        <Toaster />
      </body>
      <GoogleAnalytics gaId="XYZ" />
    </html>
  )
}
