import getAllNewsGSP from "@/app/(roadmaster)/actions/get-all-news-gsp";
import getOneNews from "@/app/(roadmaster)/actions/get-one-news"
import { Metadata, ResolvingMetadata } from "next"

// export const revalidate = 86400
// export async function generateStaticParams() {
//   const allNews = await getAllNewsGSP();

//   if (!allNews || allNews.length === 0) {
//     return []; // no params generated
//   }

//   return allNews.map((newsSlug) => ({
//     newsSlug
//   }));
// }

type Props = {
  params: Promise<{ newsSlug: string }>
}

function stripHtmlAndTruncate(html: string, wordLimit: number = 30): string {
  // Remove HTML tags and decode entities
  const plainText = html.replace(/<\/?[^>]+(>|$)/g, "").replace(/&nbsp;/g, " ").trim();
  // Split into words and truncate
  const words = plainText.split(/\s+/);
  return words.length > wordLimit ? words.slice(0, wordLimit).join(" ") + "..." : plainText;
}

export async function generateMetadata(props: Props, parent: ResolvingMetadata): Promise<Metadata> {
  const params = await props.params;
  const product = await getOneNews(params.newsSlug)
  const previousImages = (await parent).openGraph?.images || []
  const truncatedDescription = stripHtmlAndTruncate(product.description, 30);
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: product.title.concat(" | Roadmaster"),
    description: truncatedDescription,
    applicationName: 'Roadmaster',
    keywords: [
      product.title,
      product.slug,
      "Semua Berita Roadmaster",
    ],
    openGraph: {
      title: `${product.title} | Roadmaster`,
      description: truncatedDescription,
      url: `${baseUrl}/berita/${product.slug}`,
      siteName: "Roadmaster",
      images: [
        {
          url: `${baseUrl}${product.news_img_url}`,
          width: 800,
          height: 800,
          alt: product.title,
        },
        ...previousImages,
      ],
      type: "article",
      publishedTime: product.event_date.toString(), 
    },
    twitter: {
      card: "summary_large_image",
      title: `${product.title} | Roadmaster`,
      description: truncatedDescription,
      images: [    
        {
          url: `${baseUrl}${product.news_img_url}`,
          width: 800,
          height: 800,
          alt: product.title,
        },
      ],
    },
    alternates: {
      canonical: `${baseUrl}/berita/${product.slug}`,
    }
  }
}

export default function LayoutSatuBerita({
    children,
  }: {
    children: React.ReactNode
  }
)
{
  return(
    <>
      {children}
    </>
  )
  }