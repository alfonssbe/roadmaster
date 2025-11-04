"use client"

import Link from "next/link";
import { useEffect, useState } from "react";
import { NavbarComponents, NavbarProducts } from "../types";
import getAllNavbarContent from "../actions/get-all-navbar-content";
import { Button } from "@/components/ui/button";
import { SheetClose, SheetDescription, SheetTitle } from "./ui/sheet";
import Image from "next/image";
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "./ui/accordionmobilemenu";
import { Loader } from "lucide-react";

//MENU
const DriversMenu: NavbarComponents[] = [
  {
    title: "Legacy",
    href: "/drivers/legacy",
    parent: "Drivers",
    url: ""
  },
  {
    title: "Energy",
    href: "/drivers/energy",
    parent: "Drivers",
    url: ""
  },
  {
    title: "Sparta",
    href: "/drivers/sparta",
    parent: "Drivers",
    url: ""
  },
  {
    title: "Prestige",
    href: "/drivers/prestige",
    parent: "Drivers",
    url: ""
  }
]

//SUB MENU
const LegacySubMenu: NavbarComponents[] = [
  {
    title: "Subwoofer",
    href: "/drivers/legacy/subwoofer",
    parent: "Legacy",
    url: ""
  },
  {
    title: "Coaxial",
    href: "/drivers/legacy/coaxial",
    parent: "Legacy",
    url: ""
  },
  {
    title: "Tweeter",
    href: "/drivers/legacy/tweeter",
    parent: "Legacy",
    url: ""
  },
]
const EnergySubMenu: NavbarComponents[] = [
  {
    title: "Subwoofer",
    href: "/drivers/energy/subwoofer",
    parent: "Energy",
    url: ""
  }
]
const SpartaSubMenu: NavbarComponents[] = [
  {
    title: "Subwoofer",
    href: "/drivers/sparta/subwoofer",
    parent: "Sparta",
    url: ""
  }
]
const PrestigeSubMenu: NavbarComponents[] = [
  {
    title: "Subwoofer",
    href: "/drivers/prestige/subwoofer",
    parent: "Prestige",
    url: ""
  },
  {
    title: "Woofer",
    href: "/drivers/prestige/woofer",
    parent: "Prestige",
    url: ""
  },
  {
    title: "Full Range",
    href: "/drivers/prestige/full-range",
    parent: "Prestige",
    url: ""
  },
  {
    title: "Tweeter",
    href: "/drivers/prestige/tweeter",
    parent: "Prestige",
    url: ""
  },
  {
    title: "Coaxial",
    href: "/drivers/prestige/coaxial",
    parent: "Prestige",
    url: ""
  },
]
//EMPTY MENU
const EmptyMenu: NavbarComponents[] = [
  {
    title: "",
    href: "",
    parent: "",
    url: ""
  },
]

let tempLegacySubwoofer: NavbarComponents[] = []
let tempLegacyCoaxial: NavbarComponents[] = []
let tempLegacyTweeter: NavbarComponents[] = []

let tempPrestigeSubwoofer: NavbarComponents[] = []
let tempPrestigeWoofer: NavbarComponents[] = []
let tempPrestigeFullRange: NavbarComponents[] = []
let tempPrestigeTweeter: NavbarComponents[] = []
let tempPrestigeCoaxial: NavbarComponents[] = []

let tempEnergySubwoofer: NavbarComponents[] = []

let tempSpartaSubwoofer: NavbarComponents[] = []

//CONDITIONS
const LegacySubwooferConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Legacy' },
    { type: 'Sub Sub Category', name: 'Subwoofer' }
  ];
  const LegacyCoaxialConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Legacy' },
    { type: 'Sub Sub Category', name: 'Coaxial' }
  ];
  const LegacyTweeterConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Legacy' },
    { type: 'Sub Sub Category', name: 'Tweeter' }
  ];
  
  
  const PrestigeSubwooferConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Prestige' },
    { type: 'Sub Sub Category', name: 'Subwoofer' }
  ];
  const PrestigeWooferConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Prestige' },
    { type: 'Sub Sub Category', name: 'Woofer' }
  ];
  const PrestigeFullRangeConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Prestige' },
    { type: 'Sub Sub Category', name: 'Full Range' }
  ];
  const PrestigeTweeterConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Prestige' },
    { type: 'Sub Sub Category', name: 'Tweeter' }
  ];
  const PrestigeCoaxialConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Prestige' },
    { type: 'Sub Sub Category', name: 'Coaxial' }
  ];
  
  
  const EnergySubwooferConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Energy' },
    { type: 'Sub Sub Category', name: 'Subwoofer' }
  ];
  
  
  const SpartaSubwooferConditions = [
    { type: 'Category', name: 'Drivers' },
    { type: 'Sub Category', name: 'Sparta' },
    { type: 'Sub Sub Category', name: 'Subwoofer' }
  ];
  
  
  
  const conditionsAndTemps = [
    { conditions: LegacySubwooferConditions, tempArray: tempLegacySubwoofer },
    { conditions: LegacyCoaxialConditions, tempArray: tempLegacyCoaxial },
    { conditions: LegacyTweeterConditions, tempArray: tempLegacyTweeter },
  
    { conditions: PrestigeSubwooferConditions, tempArray: tempPrestigeSubwoofer },
    { conditions: PrestigeWooferConditions, tempArray: tempPrestigeWoofer },
    { conditions: PrestigeFullRangeConditions, tempArray: tempPrestigeFullRange },
    { conditions: PrestigeTweeterConditions, tempArray: tempPrestigeTweeter },
    { conditions: PrestigeCoaxialConditions, tempArray: tempPrestigeCoaxial },
    
    { conditions: EnergySubwooferConditions, tempArray: tempEnergySubwoofer },
  
    { conditions: SpartaSubwooferConditions, tempArray: tempSpartaSubwoofer },
];

function NavbarContentMobile (){
    const [driverMenu, setDriversMenu] = useState<NavbarComponents[]>(EmptyMenu)
    const [driversubMenu, setDriversSubMenu] = useState<NavbarComponents[]>(EmptyMenu)
    const [driversubsubMenu, setDriversSubSubMenu] = useState<NavbarComponents[]>(EmptyMenu)
    const [loading, setLoading] = useState(true);
    // const inputRef = useRef<HTMLInputElement>(null);
  
    //LEGACY
    const [LegacySubwooferSubSubMenu, setLegacySubwooferSubSubMenu] = useState<NavbarComponents[]>([])
    const [LegacyCoaxialSubSubMenu, setLegacyCoaxialSubSubMenu] = useState<NavbarComponents[]>([])
    const [LegacyTweeterSubSubMenu, setLegacyTweeterSubSubMenu] = useState<NavbarComponents[]>([])
  
    //PRESTIGE
    const [PrestigeSubwooferSubSubMenu, setPrestigeSubwooferSubSubMenu] = useState<NavbarComponents[]>([])
    const [PrestigeWooferSubSubMenu, setPrestigeWooferSubSubMenu] = useState<NavbarComponents[]>([])
    const [PrestigeFullRangeSubSubMenu, setPrestigeFullRangeSubSubMenu] = useState<NavbarComponents[]>([])
    const [PrestigeTweeterSubSubMenu, setPrestigeTweeterSubSubMenu] = useState<NavbarComponents[]>([])
    const [PrestigeCoaxialSubSubMenu, setPrestigeCoaxialSubSubMenu] = useState<NavbarComponents[]>([])
    
    //ENERGY
    const [EnergySubwooferSubSubMenu, setEnergySubwooferSubSubMenu] = useState<NavbarComponents[]>([])
    
    //SPARTA
    const [SpartaSubwooferSubSubMenu, setSpartaSubwooferSubSubMenu] = useState<NavbarComponents[]>([])
  
  

  
  
    useEffect(() => {
      async function fetchData() {
        try {
          const navbarData: NavbarProducts[] = await getAllNavbarContent();
          // setValue(navbarData);
          setDriversSubMenu(EmptyMenu)    
      
          navbarData.forEach((product) => {
            conditionsAndTemps.forEach(({ conditions, tempArray }) => {
              const meetsConditions = conditions.every(condition =>
                product.categories.some(cat => cat.type === condition.type && cat.name === condition.name)
              );
              if (meetsConditions) {
                const isDuplicate = tempArray.some(item => item.title === product.name);
              
                if (!isDuplicate) {
                  tempArray.push({
                    title: product.name,
                    href: product.href,
                    parent: "",
                    url: product.url
                  });
              
                  tempArray.sort((a, b) => a.title.localeCompare(b.title));
                }
              } 
            });
          });
  
          setLegacySubwooferSubSubMenu(tempLegacySubwoofer)
          setLegacyCoaxialSubSubMenu(tempLegacyCoaxial)
          setLegacyTweeterSubSubMenu(tempLegacyTweeter)
          
  
          setPrestigeSubwooferSubSubMenu(tempPrestigeSubwoofer)
          setPrestigeWooferSubSubMenu(tempPrestigeWoofer)
          setPrestigeFullRangeSubSubMenu(tempPrestigeFullRange)
          setPrestigeTweeterSubSubMenu(tempPrestigeTweeter)
          setPrestigeCoaxialSubSubMenu(tempPrestigeCoaxial)
          
          setEnergySubwooferSubSubMenu(tempEnergySubwoofer)
  
          setSpartaSubwooferSubSubMenu(tempSpartaSubwoofer)
        } catch (error) {
          console.error('Error fetching navbar products:', error);
        } finally {
          setLoading(false);
        }
      }
      fetchData();
      setLoading(false);
      
    }, []);
  
    function searchSubMenu(name: string, parent: string){
      name === "Legacy" && parent === "Drivers"? 
      ((setDriversSubMenu(LegacySubMenu))):
      name === "Prestige" && parent === "Drivers"? 
      ((setDriversSubMenu(PrestigeSubMenu))):
      name === "Energy" && parent === "Drivers"? 
      ((setDriversSubMenu(EnergySubMenu))):
      name === "Sparta" && parent === "Drivers"? 
      ((setDriversSubMenu(SpartaSubMenu))):''
    }

      function searchSubSubMenu(name: string, parent: string){
        name === "Subwoofer" && parent === "Legacy"? 
        ((setDriversSubSubMenu(LegacySubwooferSubSubMenu)
        )):
        name === "Coaxial" && parent === "Legacy"? 
        ((setDriversSubSubMenu(LegacyCoaxialSubSubMenu)
        )):
        name === "Tweeter" && parent === "Legacy"? 
        ((setDriversSubSubMenu(LegacyTweeterSubSubMenu)
        )):
    
        name === "Subwoofer" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeSubwooferSubSubMenu)
        )):
        name === "Woofer" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeWooferSubSubMenu)
        )):
        name === "Full Range" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeFullRangeSubSubMenu)
        )):
        name === "Tweeter" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeTweeterSubSubMenu)
        )):
        name === "Coaxial" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeCoaxialSubSubMenu)
        )):
        
        name === "Subwoofer" && parent === "Energy"?
        ((setDriversSubSubMenu(EnergySubwooferSubSubMenu)
        )):
        
        name === "Subwoofer" && parent === "Sparta"?
        ((setDriversSubSubMenu(SpartaSubwooferSubSubMenu)
        )):''
      }

    return(
      loading?
      <div className="bg-black w-screen h-screen flex justify-center items-center"><Loader size={20} className="animate-spin" /></div>
      :
      <>
          <SheetTitle/>
            <SheetDescription/>
            <div className='pl-6 pt-6'>
              <Link href={'/'}>
              <SheetClose>
                <Image
                  src={'/images/roadmaster/logo_roadmaster.webp'}
                  className='cursor-pointer max-w-[150px] h-8'
                  alt="Legacy Speaker Logo"
                  width={500}
                  height={500}            
                  priority
                  // fill
                />
                </SheetClose>
              </Link>
            </div>
            <div className="grid pt-12">


            <Accordion type="single" collapsible className="w-full px-6">
              <AccordionItem value="item-1">
                <AccordionTrigger onClick={() =>{
                  setDriversMenu(DriversMenu)
                }} className='hover:text-primary text-white justify-center'>
                  <div className='pr-1'>PRODUCTS</div>
                </AccordionTrigger>
                <AccordionContent>
                <Accordion type="single" collapsible className="w-full rounded-lg border-2 border-foreground px-2">
                  {driverMenu.map((menu, indexdriver) => 
                      <AccordionItem key={menu.title} value={"item-".concat(indexdriver.toString())}>
                        {indexdriver === 0 && 
                          <Link href={'/drivers'} key='All Drivers'>
                            <SheetClose className='w-full hover:text-primary text-white text-center py-2'>
                              View All Products
                            </SheetClose>
                          </Link>
                          }
                        {menu.parent===""? 
                            <Link href={menu.href} key={menu.title}>
                          <SheetClose className='w-full hover:text-primary text-white text-left'>{menu.title}
                            </SheetClose></Link>
                          :
                          <AccordionTrigger value={menu.title} onClick={() =>{
                            searchSubMenu(menu.title, menu.parent)
                          }} className='hover:text-primary text-white justify-center'><div className='pr-1'>{menu.title}</div></AccordionTrigger>
                        }
                        <AccordionContent>
                        <Accordion type="single" collapsible className="w-full rounded-lg border-2 border-foreground px-2">
                          {driversubMenu.map((submenu, index) => 
                              <AccordionItem key={submenu.title} value={submenu.title}>
                                {submenu.parent===""? 
                                    <Link key={submenu.title} href={submenu.href}>
                                  <SheetClose className='w-full hover:text-primary text-white text-left'>{submenu.title}
                                    </SheetClose></Link>
                                  :
                                  <AccordionTrigger value={submenu.title} onClick={() =>{
                                    searchSubSubMenu(submenu.title, submenu.parent)
                                  }} className='hover:text-primary px-2 text-white justify-center'><div className='pr-1'>{submenu.title}</div></AccordionTrigger>
                                }
                                <AccordionContent>
                                <Accordion type="single" collapsible className="w-full rounded-lg border-2 border-foreground px-2"> 
                                    {driversubsubMenu.map((subsubmenu, index) =>
                                      <AccordionItem key={subsubmenu.title} value={subsubmenu.title}>
                                          <Link key={subsubmenu.title} href={subsubmenu.href}>
                                        <SheetClose className='p-2 w-full hover:text-primary text-white text-left'>{subsubmenu.title}
                                          </SheetClose></Link>
                                      </AccordionItem>
                                    )
                                  }
                                  </Accordion>
                                </AccordionContent>
                              </AccordionItem>
                          )}
                            </Accordion>
                        </AccordionContent>
                      </AccordionItem>
                  )}
                  </Accordion>
                </AccordionContent>
              </AccordionItem>
            </Accordion>

              <Button variant={null} asChild className='px-6'>
                  <Link href="/news">
                  <SheetClose className='w-full text-base hover:text-primary text-white'>
                      NEWS
                    </SheetClose>
                  </Link>
              </Button>
              <Button variant={null} asChild className='px-6'>
                  <Link href="/about-us">
                  <SheetClose className='w-full text-base hover:text-primary text-white'>
                    ABOUT US
                    </SheetClose>
                  </Link>
              </Button>
              <Button variant={null} asChild className='px-6'>
                  <Link href="/catalog">
                  <SheetClose className='w-full text-base hover:text-primary text-white'>
                      CATALOGUE
                    </SheetClose>
                  </Link>
              </Button>
              <Button variant={null} asChild className='px-6'>
                  <Link href="/distributors">
                  <SheetClose className='w-full text-base hover:text-primary text-white'>
                      DISTRIBUTORS
                    </SheetClose>
                  </Link>
              </Button>
              <Button variant={null} asChild className='px-6'>
                  <Link href="/contact">
                  <SheetClose className='w-full text-base hover:text-primary text-white'>
                      CONTACT US
                    </SheetClose>
                  </Link>
              </Button>
            </div>
      </>
    )
}

export default NavbarContentMobile