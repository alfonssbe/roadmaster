import { Metadata } from 'next'

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: 'Kontak Kami',
    description: 'Kontak Roadmaster untuk informasi lebih lanjut!',
    keywords: 'Kontak Roadmaster, Kontak kami',
    openGraph: {
      title: 'Kontak Kami | Roadmaster',
      description: 'Kontak Roadmaster untuk informasi lebih lanjut!',
      url: `${baseUrl}/kontak`,
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
      title: 'Kontak Kami | Roadmaster',
      description: 'Kontak Roadmaster untuk informasi lebih lanjut!',
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
      canonical: `${baseUrl}/kontak`,
    },
  }
}

export default function LayoutKontakKami({
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
