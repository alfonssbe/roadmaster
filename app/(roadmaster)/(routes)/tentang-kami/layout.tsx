import { Metadata } from 'next'

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: 'About Us',
    description: 'Mengenal Ragam Speaker Roadmaster untuk Semua Kebutuhan Audio Mobil',
    keywords: 'Tentang kami, Tentang Roadmaster',
    openGraph: {
      title: 'Tentang Kami | Roadmaster',
      description: 'Mengenal Ragam Speaker Roadmaster untuk Semua Kebutuhan Audio Mobil',
      url: `${baseUrl}/about-us`,
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
      title: 'Tentang Kami | Roadmaster',
      description: 'Mengenal Ragam Speaker Roadmaster untuk Semua Kebutuhan Audio Mobil',
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
      canonical: `${baseUrl}/about-us`,
    },
  }
}

export default function AboutUsLayout({
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
