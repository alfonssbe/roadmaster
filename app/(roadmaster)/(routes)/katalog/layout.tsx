import { Metadata } from 'next'

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: 'Katalog',
    description: 'Jelajahi katalog Roadmaster dan temukan beragam speaker berkualitas tinggi, dari tweeter hingga subwoofer',
    keywords: 'Katalog, Katalog Roadmaster',
    openGraph: {
      title: 'Katalog | Roadmaster',
      description: 'Jelajahi katalog Roadmaster dan temukan beragam speaker berkualitas tinggi, dari tweeter hingga subwoofer',
      url: `${baseUrl}/katalog`,
      siteName: 'Roadmaster',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
          width: 1200,
          height: 630,
          alt: 'Logo Roadmaster',
        },
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
          width: 800,
          height: 800,
          alt: 'Logo Roadmaster',
        },
      ],
      locale: 'id_ID',
      type: 'website',
    },
    twitter: {
      card: 'summary_large_image',
      title: 'Katalog | Roadmaster',
      description: 'Jelajahi katalog Roadmaster dan temukan beragam speaker berkualitas tinggi, dari tweeter hingga subwoofer',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
          width: 1200,
          height: 630,
          alt: 'Logo Roadmaster',
        }
      ],
    },
    alternates: {
      canonical: `${baseUrl}/katalog`,
    },
  }
}

export default function LayoutKatalog({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <>
      {children}
    </>
  )
}
