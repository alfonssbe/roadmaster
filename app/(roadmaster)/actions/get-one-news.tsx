import { NewsType } from "@/app/(roadmaster)/types";
import { redirect } from "next/navigation";

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ONE_NEWS}`;

const getOneNews = async (slug: string): Promise<NewsType> => {

  const API_EDITED = API.replace('{newsSlug}', slug)
  const response = await fetch(API_EDITED, {cache: "no-store"});
  if (!response.ok) {
    redirect('/');
    // throw new Error(`Failed to fetch news`);
  }
  const data = await response.json();
  if (!data) {
    redirect('/');
  }
  let news: NewsType = {
    id: data.id,
    title: data.title,
    slug: data.slug,
    link_placeholder: data.link_placeholder,
    link_url: data.link_url,
    description: data.description,
    news_img_url: data.news_img[0].url,
    event_date: data.event_date,
    updatedAt: data.updatedAt
  }
    
  return news;
};

export default getOneNews;

