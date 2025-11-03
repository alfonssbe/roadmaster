import getAllNews from "../../actions/get-all-news";
import NewsClient from "./pageClient";


export default async function Berita() { 
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  let allnewsserver = await getAllNews('all');
  
  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "ItemList",      
    "url": `${baseUrl}/berita`, 
    "name": "Roadmaster",
    "description": "Semua Berita dari Roadmaster",
    "itemListElement": allnewsserver?.map((news, index) => ({
      "@type": "ListItem",
      "position": index + 1,
      "item": {
        "@type": "NewsArticle",
        "headline": news.title,
        "image": `${baseUrl}${news.news_img_url}`,
        "url": `${baseUrl}/berita/${news.slug}`,
        "description": news.description,
        "datePublished": news.event_date,
        "dateModified": news.updatedAt,  
        "author": {
          "@type": "Organization",
          "name": "Roadmaster"
        },
      }
    }))
  };

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <NewsClient />
    </>
  );
}