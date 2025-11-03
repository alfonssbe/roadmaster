"use client"

import { FeaturedProducts } from '@/app/(roadmaster)/types';
import SwiperCarousel from '../../components/ui/swipercarousel';
import Image from 'next/image';
import { Loader } from '../../components/ui/loader';
import getAllFeaturedProducts from '../../actions/get-all-featured-products';
import { useEffect, useState } from 'react';

const Hero: React.FC = () => {
  const [loading, setLoading] = useState(true);
  const [value, setValue] = useState<FeaturedProducts[]>([]);

  useEffect(() => {
    async function fetchData() {
      try {
        const featuredData: FeaturedProducts[] = await getAllFeaturedProducts();
        setValue(featuredData);
      } catch (error) {
        console.error('Error fetching featured products:', error);
      } finally {
        setLoading(false);
      }
    }

    fetchData();
  }, []);
  

  return (
      // loading? 
      //   <FullScreenLoader isVisible={loading}/>
      //  :
        <>
          <div className="top-0 left-0 w-full z-10"> 
          <h2 className='sr-only'>Produk Unggulan milik Roadmaster!</h2>
          <div className="absolute w-full h-[90vh] top-0">
            <img
              className="top-0 left-0 object-cover w-screen h-screen"
              src="/images/roadmaster/navbarbg.webp"
              alt="Navigation Bar Background Roadmaster"
              width={1000}
              height={1000}
            />
          </div>
            {loading? 
              <div className="flex items-center justify-center w-screen h-[300px] z-50">
                <Loader/>
              </div>  
              :
                <SwiperCarousel slides={value}/>
             }
          </div>
        </>  
  )
};

export default Hero;
