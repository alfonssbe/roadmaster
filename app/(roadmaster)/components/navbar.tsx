"use client"

import Link from 'next/link';
import Image from 'next/image';
import { useEffect, useState } from 'react';
function Navbar() {
  const [navbarBg, setNavbarBg] = useState(false);
  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 100) { // Change this value based on when you want the background to change
        setNavbarBg(true);
      } else {
        setNavbarBg(false);
      }
    };
    
    handleScroll()

    window.addEventListener('scroll', handleScroll);

    // Cleanup event listener on component unmount
    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  return ( 
    <nav className={`transition-all duration-500 ease-in-out h-fit w-fit ${navbarBg ? 'bg-foreground/30 backdrop-blur-lg shadow-lg shadow-foreground/30 rounded-full' :  ''}`}>
    <div className={`flex items-start justify-between py-2 px-4`}>
      <div className="w-full flex">
        <Link
          href={'/'}
          className="flex md:items-start items-center"
        >
          <Image
            src="/images/roadmaster/logo_roadmaster.webp"
            alt="Logo Roadmaster"
            width={500}
            height={500}
            priority
            className="cursor-pointer h-auto md:max-h-12 max-h-10 w-auto"
          />
        </Link>
      </div>  
      </div>
    </nav>
  );
}

export default Navbar;