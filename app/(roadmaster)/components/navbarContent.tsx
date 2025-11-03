"use client"

import Link from "next/link";
import { NavigationMenuLink } from "./ui/navigation-menu";
import { ChevronRight, Loader } from "lucide-react";
import { useEffect, useState } from "react";
import { NavbarComponents, NavbarProducts } from "../types";
import getAllNavbarContent from "../actions/get-all-navbar-content";

const styledDropdown = "text-sm px-1 py-2 text-foreground"

//SUB MENU
const LegacySubMenu: NavbarComponents[] = [
  {
    title: "Subwoofer",
    href: "/drivers/roadmaster/subwoofer",
    parent: "Roadmaster",
    url: ""
  },
  {
    title: "Coaxial",
    href: "/drivers/roadmaster/coaxial",
    parent: "Roadmaster",
    url: ""
  },
  {
    title: "Tweeter",
    href: "/drivers/roadmaster/tweeter",
    parent: "Roadmaster",
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

function NavbarContent (){
    // console.log("PALING AWAK", tempSpartaSubwoofer)
    const [driversubMenu, setDriversSubMenu] = useState<NavbarComponents[]>(EmptyMenu)
    const [driversubsubMenu, setDriversSubSubMenu] = useState<NavbarComponents[]>(EmptyMenu)
    const [loading, setLoading] = useState(true);
    // const inputRef = useRef<HTMLInputElement>(null);
  
    //LEGACY
    const [LegacySubwooferSubSubMenu, setLegacySubwooferSubSubMenu] = useState<NavbarComponents[]>(tempLegacySubwoofer)
    const [LegacyCoaxialSubSubMenu, setLegacyCoaxialSubSubMenu] = useState<NavbarComponents[]>(tempLegacyCoaxial)
    const [LegacyTweeterSubSubMenu, setLegacyTweeterSubSubMenu] = useState<NavbarComponents[]>(tempLegacyTweeter)
  
    //PRESTIGE
    const [PrestigeSubwooferSubSubMenu, setPrestigeSubwooferSubSubMenu] = useState<NavbarComponents[]>(tempPrestigeSubwoofer)
    const [PrestigeWooferSubSubMenu, setPrestigeWooferSubSubMenu] = useState<NavbarComponents[]>(tempPrestigeWoofer)
    const [PrestigeFullRangeSubSubMenu, setPrestigeFullRangeSubSubMenu] = useState<NavbarComponents[]>(tempPrestigeFullRange)
    const [PrestigeTweeterSubSubMenu, setPrestigeTweeterSubSubMenu] = useState<NavbarComponents[]>(tempPrestigeTweeter)
    const [PrestigeCoaxialSubSubMenu, setPrestigeCoaxialSubSubMenu] = useState<NavbarComponents[]>(tempPrestigeCoaxial)
    
    //ENERGY
    const [EnergySubwooferSubSubMenu, setEnergySubwooferSubSubMenu] = useState<NavbarComponents[]>(tempEnergySubwoofer)
    
    //SPARTA
    const [SpartaSubwooferSubSubMenu, setSpartaSubwooferSubSubMenu] = useState<NavbarComponents[]>(tempSpartaSubwoofer)
  
  
    //OTHER
    const [hoveredDriverMenu, setHoveredDriverMenu] = useState("");
    const [hoveredDriverSubMenu, setHoveredDriverSubMenu] = useState("");
    const [hoveredDriverSubMenuIndex, setHoveredDriverSubMenuIndex] = useState(0);

  
  
    useEffect(() => {
      async function fetchData() {
        try {
          const navbarData: NavbarProducts[] = await getAllNavbarContent();
          // setValue(navbarData);
          setDriversSubMenu(EmptyMenu)    
      
          navbarData.forEach((product) => {
            conditionsAndTemps.forEach(({ conditions, tempArray }) => {
              // console.log("tempArray", tempArray)
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
          
          // console.log("navbarData: ", navbarData)
          // console.log('tempLegacySubwoofer', tempLegacySubwoofer)
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
  
      function searchSubSubMenu(name: string, parent: string){
        name === "Subwoofer" && parent === "Legacy"? 
        ((setDriversSubSubMenu(LegacySubwooferSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        name === "Coaxial" && parent === "Legacy"? 
        ((setDriversSubSubMenu(LegacyCoaxialSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        name === "Tweeter" && parent === "Legacy"? 
        ((setDriversSubSubMenu(LegacyTweeterSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
    
        name === "Subwoofer" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeSubwooferSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        name === "Woofer" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeWooferSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        name === "Full Range" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeFullRangeSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        name === "Tweeter" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeTweeterSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        name === "Coaxial" && parent === "Prestige"?
        ((setDriversSubSubMenu(PrestigeCoaxialSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        
        name === "Subwoofer" && parent === "Energy"?
        ((setDriversSubSubMenu(EnergySubwooferSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):
        
        name === "Subwoofer" && parent === "Sparta"?
        ((setDriversSubSubMenu(SpartaSubwooferSubSubMenu), 
        setHoveredDriverSubMenu(name)
        )):''
      }

    return(
      // loading?
      // <div className='grid grid-cols-3 w-full bg-transparent'><div className='rounded-lg h-fit z-40 p-1 px-2'><Loader size={20} className='animate-spin' /></div></div>
      // :
      // <div className="w-screen">
        <div className='container mx-auto grid grid-cols-3 w-screen'>
        <div className='w-[200px] overflow-y-auto h-fit z-40'>
          <ul className="gap-1 p-1">
          <NavigationMenuLink href={'/drivers'}>
          <div
            onMouseEnter={() => {
              setHoveredDriverMenu("");
              setHoveredDriverSubMenu("");
              setDriversSubMenu(EmptyMenu);
              setDriversSubSubMenu(EmptyMenu);
            }}
            className='px-2'
          >
            <div className={`${styledDropdown} flex justify-between items-center align-middle hover:text-secondary text-white `}>
              View All Products
            </div>
          </div>
          </NavigationMenuLink>
          <NavigationMenuLink href={'/drivers/legacy'}>
          <div
            onMouseEnter={() => {
              setHoveredDriverMenu("Legacy");
              setHoveredDriverSubMenu("");
              setDriversSubMenu(LegacySubMenu);
              setDriversSubSubMenu(EmptyMenu);
            }}
            className='px-2'
          >
            <div className={`${styledDropdown} flex justify-between items-center align-middle ${hoveredDriverMenu==="Legacy" ? 'text-background' : 'text-white'}`}>Legacy
            <ChevronRight size={15} className={`pb-1 ${hoveredDriverMenu==="Legacy" ? ' text-foreground' : 'text-white'}`}/></div>

          </div>
          </NavigationMenuLink>
          <NavigationMenuLink href={"/drivers/prestige"}>
          <div
            onMouseEnter={() => {
              setHoveredDriverMenu("Prestige");
              setHoveredDriverSubMenu("");
              setDriversSubMenu(PrestigeSubMenu);
              setDriversSubSubMenu(EmptyMenu);
            }}
            className='px-2'
          >
            <div className={`${styledDropdown} flex justify-between items-center align-middle ${hoveredDriverMenu==="Prestige" ? 'text-background' : 'text-white'}`}>Prestige
            <ChevronRight size={15} className={`pb-1 ${hoveredDriverMenu==="Prestige" ? ' text-foreground' : 'text-white'}`}/></div>
          </div>
          </NavigationMenuLink>
              <NavigationMenuLink href={'/drivers/energy'}>
              <div
                onMouseEnter={() => {
                  setHoveredDriverMenu("Energy");
                  setHoveredDriverSubMenu("");
                  setDriversSubMenu(EnergySubMenu);
                  setDriversSubSubMenu(EmptyMenu);
                }}
                className='px-2'
              >
                <div className={`${styledDropdown} flex justify-between items-center align-middle ${hoveredDriverMenu==="Energy" ? 'text-background' : 'text-white'}`}>Energy
                <ChevronRight size={15} className={`pb-1 ${hoveredDriverMenu==="Energy" ? ' text-foreground' : 'text-white'}`}/></div>

              </div>
              </NavigationMenuLink>
              <NavigationMenuLink href={'/drivers/sparta'}>
              <div
                onMouseEnter={() => {
                  setHoveredDriverMenu("Sparta");
                  setHoveredDriverSubMenu("");
                  setDriversSubMenu(SpartaSubMenu);
                  setDriversSubSubMenu(EmptyMenu);
                }}
                className='px-2'
              >
                <div className={`${styledDropdown} flex justify-between items-center align-middle ${hoveredDriverMenu==="Sparta" ? 'text-background' : 'text-white'}`}>Sparta
                <ChevronRight size={15} className={`pb-1 ${hoveredDriverMenu==="Sparta" ? ' text-foreground' : 'text-white'}`}/></div>

              </div>
              </NavigationMenuLink>
          </ul>
        </div>
        <div className={`${hoveredDriverMenu === 'Legacy' ? 'pt-[36px]' : hoveredDriverMenu === 'Prestige' ? 'pt-[72px]' : hoveredDriverMenu === 'Energy' ? 'pt-[108px]' : hoveredDriverMenu === 'Sparta' ? 'pt-[144px]' : 'pt-0'} overflow-hidden whitespace-nowrap inline-block z-30`}>
          <div className={`w-[190px] overflow-y-auto rounded-lg h-fit transform transition-all z-30 ${driversubMenu[0].title === '' ? '-translate-x-1/2 bg-transparent' : 'translate-x-0 shadow-md'}`}>
            <ul className="gap-1 p-1">
              {/* SUB MENU */}
              {driversubMenu.map((products, index) => (
                <div key={index} onMouseEnter={() => {searchSubSubMenu(products.title, products.parent), setHoveredDriverSubMenuIndex(index)}} //DISINII 
              className='px-2'
                >
                  {products.parent!=="" && 
                    <NavigationMenuLink href={products.href}>
                    <div className={`${styledDropdown} flex justify-between items-center align-middle ${hoveredDriverSubMenu===products.title ? 'text-background' : 'text-white'}`}>{products.title}
                      <ChevronRight size={15} className={`pb-1 ${hoveredDriverSubMenu===products.title ? 'text-foreground' : 'text-white'}`}/>
                    </div>
                    </NavigationMenuLink>}
                </div>
              ))}
            </ul>
          </div>
        </div>
        {driversubsubMenu.length!=0 &&
          <div className={`${hoveredDriverMenu === 'Legacy' ? 'pt-[36px]' : hoveredDriverMenu === 'Prestige' ? 'pt-[72px]' : hoveredDriverMenu === 'Energy' ? 'pt-[108px]' : hoveredDriverMenu === 'Sparta' ? 'pt-[144px]' : 'pt-0'} z-20`}>
          <div style={{ paddingTop: `calc(${hoveredDriverSubMenuIndex} * 36px)` }}>
          <div className={`w-[190px] overflow-y-auto max-h-[400px] h-fit rounded-lg transform transition-all z-20 ${driversubsubMenu[0].title === ''? '-translate-x-1/2 bg-transparent' : 'translate-x-0 shadow-md'}`}>
          <ul className="gap-1 p-1">
            {/* SUB MENU */}
            {driversubsubMenu[0].title != '' && driversubsubMenu.map((products, index) => (
              <div key={index} onMouseEnter={() => searchSubSubMenu(products.title, products.parent)} 
            className='px-2'
              >
                {products.parent==="" &&
                  <NavigationMenuLink href={`${products.href}`}>
                  <div className={`${styledDropdown} hover:text-foreground text-white`} >{products.title}</div>
                  </NavigationMenuLink>
                }
              </div>
            ))}
          </ul>
          </div>
        </div> 
        </div>}
        {/* </Suspense> */}
      
      </div>    
      // </div>
    )
}

export default NavbarContent