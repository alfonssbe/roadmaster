"use client";

import { useEffect, useState } from "react";
import { activeSlider, NewsType } from "@/app/(roadmaster)/types";
import NoResults from "@/app/(roadmaster)/components/ui/no-results";
import NewsCard from "@/app/(roadmaster)/components/ui/news-card";
import { Separator } from "@/components/ui/separator";


interface MainProps {
    allActiveSliderVal: (activeSlider)[]
    news: (NewsType)[]
};

const AllNews: React.FC<MainProps> = ({
    allActiveSliderVal, news
}) => {
    const [allNews, setAllNews] = useState<NewsType[]>([])

    const normalizeDate = (date: Date) =>
        new Date(date.getFullYear(), date.getMonth(), date.getDate());

    useEffect(() => {
        const fetchData = async () => {
          try {
            let finishedSliderNews: NewsType[] = []
            let tempShowed: NewsType[][] = [];
            

            if (allActiveSliderVal.length !== 0) {
                allActiveSliderVal.forEach((slider, indexslider) => {
                    if (!tempShowed[indexslider]) {
                        tempShowed[indexslider] = [];
                    }
                    if (indexslider === 0) {
                        news.forEach((product) => {
                            const productValue = normalizeDate(new Date(product.event_date));
                            const bottomValue = normalizeDate(new Date(slider.bottomRealVal));
                            const topValue = normalizeDate(new Date(slider.topRealVal));


                            if (bottomValue <= productValue && topValue >= productValue) {
                                tempShowed[indexslider].push(product);
                            }
                        });
                    } else {
                        tempShowed[indexslider - 1].forEach((product) => {
                            const productValue = normalizeDate(new Date(product.event_date));
                            const bottomValue = normalizeDate(new Date(slider.bottomRealVal));
                            const topValue = normalizeDate(new Date(slider.topRealVal));


                            if (bottomValue <= productValue && topValue >= productValue) {
                                tempShowed[indexslider].push(product);
                            }
                        });
                    }
                });
                finishedSliderNews = tempShowed[allActiveSliderVal.length - 1]
            } else {
                finishedSliderNews = news
            }

            let FinalFeatured: NewsType[] = []
            for (const slidernews of finishedSliderNews) {
                FinalFeatured.push(slidernews)
            }
            // FinalFeatured.sort((a, b) => a.title.localeCompare(b.title));

            setAllNews(FinalFeatured)

          } catch (error) {
            console.error('Error fetching data:', error);
          }
        };
    
        fetchData();
      }, [news, allActiveSliderVal]); 
    return ( 
        <>
            {allNews.length === 0 ?        
                <div className="w-full">
                    <NoResults />
                </div>
            :
                <div className="block">
                    {allNews.map((item: NewsType, i) => (
                        <div key={i} className="lg:px-4">
                            <NewsCard data={item}/>
                            <Separator/>
                        </div>
                    ))}
                </div>
            }
        </>
    );
};

export default AllNews;
