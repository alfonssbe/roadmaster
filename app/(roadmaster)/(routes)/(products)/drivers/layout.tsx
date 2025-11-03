import { Metadata } from "next"

 
export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: 'All Drivers',
    description: 'Jelajahi berbagai driver speaker Roadmaster, dari tweeter hingga subwoofer, dengan kualitas terbaik untuk kebutuhan audio Anda!',  
    keywords: 'Semua driver, Semua drivers Roadmaster',
    openGraph: {
      title: 'Semua Driver | Roadmaster',
      description: 'Jelajahi berbagai driver speaker Roadmaster, dari tweeter hingga subwoofer, dengan kualitas terbaik untuk kebutuhan audio Anda!',
      url: `${baseUrl}/drivers`,
      siteName: 'Roadmaster',
      images: [
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
      title: 'Semua Driver | Roadmaster',
      description: 'Jelajahi berbagai driver speaker Roadmaster, dari tweeter hingga subwoofer, dengan kualitas terbaik untuk kebutuhan audio Anda!',
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
      canonical: `${baseUrl}/drivers`,
    },
  }
}

export default function DriversLayout({
    children,
  }: {
    children: React.ReactNode
  }) {

    return(
        <div className="container mx-auto xl:px-36 lg:px-20 px-10">
          {children}
        </div>
    )
}