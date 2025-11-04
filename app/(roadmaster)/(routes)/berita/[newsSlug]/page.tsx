import getOneNews from "@/app/(roadmaster)/actions/get-one-news";
import {
  Breadcrumb,
  BreadcrumbItem,
  BreadcrumbLink,
  BreadcrumbList,
  BreadcrumbPage,
  BreadcrumbSeparator,
} from "@/app/(roadmaster)/components/ui/breadcrumb";
import "./styles.scss";
import { LazyImageContact } from "@/app/(roadmaster)/components/lazyImageContact";
import { SanitizedHtml } from "./sanitizedHtml";

type Props = {
  params: Promise<{ newsSlug: string }>
}

export default async function SingleNewsPage(props: Props) {
  let slug = (await props.params).newsSlug

  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const tempData = await getOneNews(slug);

  const formatDate = (isoDate: string): string => {
    const date = new Date(isoDate);
    const options: Intl.DateTimeFormatOptions = {
      weekday: "long",
      day: "2-digit",
      month: "long",
      year: "numeric",
    };
    return date.toLocaleDateString("id-ID", options);
  };

  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "NewsArticle",
    "headline": tempData?.title ? tempData.title : '',
    "image": tempData?.news_img_url.length > 0 ? `${baseUrl}${[tempData.news_img_url]}` : '',
    "description": tempData?.description? tempData.description : '',
    "datePublished": tempData?.event_date ? tempData.event_date : '',
    "dateModified": tempData?.updatedAt ? tempData.updatedAt : '',
    "author": {
      "@type": "Organization",
      "name": "ACR"
    },
    "publisher": {
      "@type": "Organization",
      "name": "Roadmaster",
      "logo": {
        "@type": "ImageObject",
        "url": `${baseUrl}/images/roadmaster/logo_roadmaster.webp`
      }
    },
    "mainEntityOfPage": {
      "@type": "WebPage",
      "@id": tempData?.slug ? `${baseUrl}/berita/${tempData.slug}` : `${baseUrl}/berita`
    }
  };
  

  return (
    <>
        <script 
          type="application/ld+json" 
          dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }} 
        />
        <div className="bg-white -z-10">
          {tempData && (
            <div className="container mx-auto xl:px-36 lg:px-20 px-10 py-8">
              {/* Breadcrumb */}
              <div className="pb-6">
                <Breadcrumb>
                  <BreadcrumbList>
                    <BreadcrumbItem>
                      <BreadcrumbLink href="/">Home</BreadcrumbLink>
                    </BreadcrumbItem>
                    <BreadcrumbSeparator />
                    <BreadcrumbItem>
                      <BreadcrumbLink href="/berita">Semua Berita</BreadcrumbLink>
                    </BreadcrumbItem>
                    <BreadcrumbSeparator />
                    <BreadcrumbItem>
                      <BreadcrumbPage>{tempData.title.length > 10 ? `${tempData.title.slice(0, 10)}...` : tempData.title}</BreadcrumbPage>
                    </BreadcrumbItem>
                  </BreadcrumbList>
                </Breadcrumb>
              </div>

              {/* Content Section */}
              <div className="w-full">
                {/* Image with reserved space */}
                <div className="relative w-full sm:w-1/3 aspect-square">
                  <LazyImageContact src={tempData.news_img_url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${tempData.news_img_url}` : tempData.news_img_url} alt={tempData.title}/>
                  {/* <Image
                    src={news.news_img_url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${news.news_img_url}` : news.news_img_url}
                    alt={news.title}
                    fill
                    sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
                    className="object-cover"
                    priority
                  /> */}
                </div>

                {/* Title and Date */}
                <h1 className="lg:text-3xl text-xl text-black font-bold py-2">
                  {tempData.title}
                </h1>
                <h2 className="lg:text-base text-sm text-gray-500 pb-8">
                  {formatDate(tempData.event_date.toString())}
                </h2>

                {/* Description */}
                <SanitizedHtml html={tempData.description} />
              </div>
            </div>
          )}
        </div>
    </>
  );
};

