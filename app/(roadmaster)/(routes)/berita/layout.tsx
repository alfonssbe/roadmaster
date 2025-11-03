import { Metadata } from 'next'

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: 'Berita',
    description: 'Dapatkan berita terbaru dari Roadmaster! Temukan informasi terkini tentang produk, inovasi, dan acara kami di sini!',
    keywords: 'Berita, Berita Roadmaster',
    openGraph: {
      title: 'Berita | Roadmaster',
      description: 'Dapatkan semua berita terbaru dari Roadmaster! Temukan informasi terkini tentang produk, inovasi, dan acara kami di sini!',
      url: `${baseUrl}/berita`,
      siteName: 'Roadmaster',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_legacy.webp`,
          width: 1200,
          height: 630,
          alt: 'Logo Roadmaster',
        },
        {
          url: `${baseUrl}/images/roadmaster/logo_legacy.webp`,
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
      title: 'Berita | Roadmaster',
      description: 'Dapatkan berita terbaru dari Roadmaster! Temukan informasi terkini tentang produk, inovasi, dan acara kami di sini!',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_legacy.webp`,
          width: 1200,
          height: 630,
          alt: 'Logo Roadmaster',
        }
      ],
    },
    alternates: {
      canonical: `${baseUrl}/berita`,
    }
  }
}

export default function LayoutBerita({
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
