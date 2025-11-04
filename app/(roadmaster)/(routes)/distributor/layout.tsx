import { Metadata } from 'next'

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: 'Distributor',
    description: 'Temukan semua distributor resmi Roadmaster di seluruh Indonesia',
    keywords: 'Semua Distributor, Semua Distributor Roadmaster, Distributor Surabaya Roadmaster, Distributor Jakarta Roadmaster, Distributor Malang Roadmaster, Distributor Bandung Roadmaster, Distributor Pati Roadmaster',
    openGraph: {
      title: 'Distributor | Roadmaster',
      description: 'Temukan semua distributor resmi Roadmaster di seluruh Indonesia',
      url: `${baseUrl}/distributor`,
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
      title: 'Distributor | Roadmaster',
      description: 'Temukan semua distributor resmi Roadmaster di seluruh Indonesia',
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
      canonical: `${baseUrl}/distributor`,
    },
  }
}

export default function LayoutDistributor({
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
