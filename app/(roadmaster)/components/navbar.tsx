"use client"

import Link from 'next/link';
import Image from 'next/image';
function Navbar() {
  return ( 
    <nav className="h-fit w-fit">
    <div className={`flex items-start justify-between py-2 px-4`}>
      <div className="w-3/4 flex">
        <Link
          href={'/'}
          className="flex md:items-start items-center"
        >
          <Image
            src={`/images/roadmaster/logo_roadmaster.webp`}
            className='cursor-pointer max-w-fit h-12'
            alt="Logo Roadmaster"
            width={1000}
            height={1000}            
            priority
            // fill
          />
        </Link>
      </div>  
      </div>
    </nav>
  );
}

export default Navbar;