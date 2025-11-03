import { Metadata, ResolvingMetadata } from 'next'

type Props = {
  params: Promise<{ productSlugs: string }>
}
 
export async function generateMetadata(props: Props, parent: ResolvingMetadata): Promise<Metadata> {
  const params = await props.params;
  const slugs = decodeURIComponent(params.productSlugs); 
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
  title: 'Perbandingan | Roadmaster',
  description: 'Bandingkan produk Roadmaster yang telah Anda pilih untuk menemukan pilihan terbaik.',
    keywords: 'Perbandingan Produk Roadmaster',
    openGraph: {
      title: 'Perbandingan | Roadmaster',
      description: 'Bandingkan produk Roadmaster yang telah Anda pilih untuk menemukan pilihan terbaik.',
      url: `${baseUrl}/perbandingan/${slugs}`,
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
      title: 'Perbandingan | Roadmaster',
      description: 'Bandingkan produk Roadmaster yang telah Anda pilih untuk menemukan pilihan terbaik.',
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
      canonical: `${baseUrl}/perbandingan/${slugs}`,
    },
  }
}

export default function ComparisonPageLayout({
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
