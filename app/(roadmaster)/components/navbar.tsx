"use client"

import { usePathname } from 'next/navigation';
import Link from 'next/link';
import Image from 'next/image';
import { NavigationMenu, NavigationMenuContent, NavigationMenuItem, NavigationMenuLink, NavigationMenuList, NavigationMenuTrigger, navigationMenuTriggerStyle } from './ui/navigation-menu';
import { Loader, Menu, Search } from 'lucide-react';

import dynamic from 'next/dynamic';
import { useEffect, useState } from 'react';
import { Button } from '@/components/ui/button';
import { Sheet, SheetContent, SheetTrigger } from './ui/sheet';

const DynamicSearchboxLoad = dynamic(() => import('./searchbox'), {
  ssr: false,
  loading: () => <><Loader size={20} className='animate-spin' /></>
})

const DynamicNavbarContentLoad = dynamic(() => import('./navbarContent'), {
  ssr: false,
  loading: () => <div className='w-screen bg-foreground/40 backdrop-blur-md'><div className='flex items-center rounded-lg h-fit z-40 p-1 px-2'><Loader size={20} className='animate-spin' /></div></div>
})

const DynamicNavbarContentMobileLoad = dynamic(() => import('./navbarContentMobile'), {
  ssr: false,
  loading: () => <div className="bg-black w-screen h-screen flex justify-center items-center"><Loader size={20} className="animate-spin" /></div>

})

function Navbar() {

  //OTHER
  const pathname = usePathname()
  const [searchBoxOpen, setSearchBoxOpen] = useState<boolean>(false)
  const [navbarContentOpen, setnavbarContentOpen] = useState<boolean>(false)
  const [navbarContentMobileOpen, setnavbarContentMobileOpen] = useState<boolean>(false)
  const [navbarBg, setNavbarBg] = useState(false);


  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 0) { // Change this value based on when you want the background to change
        setNavbarBg(true);
      } else {
        setNavbarBg(false);
      }
    };

    handleScroll()

    window.addEventListener('scroll', handleScroll);

    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);


  return ( 
    // loading?
    //   <FullScreenLoader isVisible={loading} />
    // :
    // <div className={`${navbarBg ? 'bg-foreground/30 backdrop-blur-md' : 'bg-background/30 backdrop-blur-md'} shadow-lg transition-all duration-300 ease-in-out m-8 rounded-full`}>
    <nav className="container mx-auto pt-4 h-fit w-fit">
    <div className={`bg-foreground/40 backdrop-blur-md shadow-lg transition-all duration-300 ease-in-out rounded-full flex items-center justify-between p-2`}>
      <div className="w-3/4 flex">
        <Link
          href={'/'}
          className="flex items-center"
        >
          <Image
            src={`/images/roadmaster/logo_legacy.webp`}
            className='cursor-pointer max-w-[150px] h-8'
            alt="Logo Roadmaster"
            width={1000}
            height={1000}            
            priority
            // fill
          />
        </Link>
        {/* {isDesktop && */}
          <div className="hidden lg:flex justify-center px-8">
            <NavigationMenu>
              <NavigationMenuList className=" flex items-center">
                <NavigationMenuItem>
                    <Link href={'/drivers'} passHref>
                    <NavigationMenuTrigger className={navigationMenuTriggerStyle().concat(` bg-transparent`)} onMouseEnter={() => {
                      setnavbarContentOpen(true)
                      // setHoveredDriverMenu("");
                      // setHoveredDriverSubMenu("");
                      // setDriversSubMenu(EmptyMenu);
                      // setDriversSubSubMenu(EmptyMenu);
                    }}>
                      PRODUK
                    </NavigationMenuTrigger>
                    </Link>
                  <NavigationMenuContent className="bg-foreground/40 backdrop-blur-md mt-1">
                    {navbarContentOpen && <DynamicNavbarContentLoad/>}
                  </NavigationMenuContent>
                </NavigationMenuItem>
                
                
                <NavigationMenuItem>
                    <NavigationMenuLink href="/news" className={navigationMenuTriggerStyle().concat(` bg-transparent`)}>
                      {/* <div className={`hover:text-primary ${pathname.includes('news') ?'text-foreground' :navbarBg ? 'text-black' : ''}`}> */}
                        BERITA
                      {/* </div> */}
                    </NavigationMenuLink>
                </NavigationMenuItem>
                <NavigationMenuItem>
                    <NavigationMenuLink href="/about-us" className={navigationMenuTriggerStyle().concat(` bg-transparent`)}>
                      {/* <div className={`hover:text-primary ${pathname.includes('about-us') ?'text-foreground' :navbarBg ? 'text-black' : ''}`}> */}
                        TENTANG KAMI
                      {/* </div> */}
                    </NavigationMenuLink>
                </NavigationMenuItem>
                <NavigationMenuItem>
                    <NavigationMenuLink href="/catalog" className={navigationMenuTriggerStyle().concat(` bg-transparent`)}>
                      {/* <div className={`hover:text-primary ${pathname.includes('catalog') ?'text-foreground' :navbarBg ? 'text-black' : ''}`}> */}
                        KATALOG
                      {/* </div> */}
                    </NavigationMenuLink>
                </NavigationMenuItem>
                <NavigationMenuItem>
                  <NavigationMenuLink href="/distributors" className={navigationMenuTriggerStyle().concat(` bg-transparent`)}>
                    {/* <div className={`hover:text-primary ${pathname.includes('distributors') ?'text-foreground' :navbarBg ? 'text-black' : ''}`}> */}
                      DISTRIBUTOR
                    {/* </div> */}
                  </NavigationMenuLink>
              </NavigationMenuItem>
                <NavigationMenuItem>
                  <NavigationMenuLink href="/contact" className={navigationMenuTriggerStyle().concat(` bg-transparent`)}>
                    {/* <div className={`hover:text-primary ${pathname.includes('contact') ?'text-foreground' :navbarBg ? 'text-black' : ''}`}> */}
                      KONTAK KAMI
                    {/* </div> */}
                  </NavigationMenuLink>
              </NavigationMenuItem>
              </NavigationMenuList>
            </NavigationMenu>
          </div>
        {/* } */}
      </div>  
      {/* {isDesktop && */}
        <div className="w-1/4 hidden lg:flex items-center justify-end">
          <div className={`flex items-center justify-end font-bold text-white hover:text-primary hover:cursor-pointer`} onMouseEnter={() => setSearchBoxOpen(false)} onClick={() => searchBoxOpen? setSearchBoxOpen(false): setSearchBoxOpen(true)}>
          <a className='xl:block hidden'>Search</a> 
            <Search size={25} className="m-2 hover:cursor-pointer" />
          </div>
        </div>
      {/* } */}


      {searchBoxOpen && <DynamicSearchboxLoad/>}


      {/* MAIN MENU TABLET & MOBILE VIEW */}
      {/* {isMobile &&  */}
      <div className='flex lg:hidden'>
        <Button variant={null} asChild className='px-2'>
          <div className={`w-full text-base hover:text-primary ${navbarBg ? 'text-black' : 'text-white'}`}
              onMouseDown={() => setSearchBoxOpen(false)}
              onClick={() => searchBoxOpen ? setSearchBoxOpen(false) : setSearchBoxOpen(true)} >
            <div 
              className='flex items-center text-base'
            >
              <Search size={25} className="ml-2 hover:cursor-pointer" />
              {/* <SearchBox mobile={true}/> */}
            </div>
          </div>
        </Button>
        <Sheet>
          <SheetTrigger asChild>
            <Button variant={null} className={`w-fit p-0 ${navbarBg ? 'text-black' : 'text-white'} hover:text-primary hover:cursor-pointer`} onClick={() => setnavbarContentMobileOpen(true)}>
                <Menu size={30} className="" />
              </Button>
          </SheetTrigger>
          <SheetContent className="w-screen h-auto p-0 overflow-y-auto bg-black">
            {navbarContentMobileOpen && <DynamicNavbarContentMobileLoad/>}
          </SheetContent>
        </Sheet>
        </div>

      {/* } */}
      </div>
    </nav>
  // </div>
  );
}

export default Navbar;