import Image from 'next/image';
import { FindUs } from './FindUs';
import { Separator } from '../../../components/ui/separator';
import Link from 'next/link';
import { Mail, MapPin, Phone } from 'lucide-react';

export default function Footer() {
  return (
    <div className='relative md:py-0 py-10'>
      <img src={'/images/roadmaster/footerbg.webp'} alt='Background Footer Roadmaster' className='object-cover bg-center absolute inset-0 z-0 w-screen h-full' width={1000} height={1000} loading='lazy'/>
      <div className='relative z-10 container mx-auto xl:px-36 lg:px-20 px-10 xl:py-8 lg:py-6 py-4'>
      <div className="text-white font-bold sm:text-2xl text-lg text-center">
        <h2>Brand Lain Dari CV. Sinar Baja Electric</h2>
        <div className="md:grid md:grid-cols-3 md:px-0 px-8 items-center gap-4 py-8">
          <div className="hidden md:block"></div>

          <div className="flex items-center justify-center gap-4">
            <h3 className='sr-only'>ACR Speaker Website</h3>
            <Link href="https://acrspeaker.com/" target="_blank" aria-label="Visit ACR Speaker Website">
              <Image
                src="/images/roadmaster/ACR2.webp"
                alt="Logo ACR Speaker"
                width={150}
                height={150}
                className="w-auto md:h-24 h-12 object-contain transition-transform duration-300 hover:scale-110"
                loading="lazy"
              />
            </Link>
            <h3 className='sr-only'>Rhyme Audio Website</h3>
            <Link href="https://rhymeaudio.com/" target="_blank" aria-label="Visit Rhyme Audio Website">
              <Image
                src="/images/roadmaster/Rhyme2.webp"
                alt="Logo Rhyme Audio"
                width={150}
                height={150}
                className="w-auto md:h-24 h-12 object-contain transition-transform duration-300 hover:scale-110"
                loading="lazy"
              />
            </Link>
          </div>

          <div className="hidden md:block"></div>
        </div>
        <div className="md:hidden flex justify-center items-center w-full h-full pb-4">
          <FindUs scrolled={false} type='footer'/>
        </div>
        <Separator className="opacity-50 md:hidden block" />
        <div className='md:hidden block justify-center items-center w-full h-full'>
          <h3 className='sr-only'>Download Aplikasi MySBE</h3>
            <div className='text-white py-6 text-sm font-normal'>Download Aplikasinya Sekarang</div>
              <Link href="https://play.google.com/store/apps/details?id=id.sbe.mysbe.customer&hl=id&pli=1" target="__blank" className="flex font-bold text-center items-center justify-center">
                <Image src={"/images/roadmaster/mysbe.webp"} alt="Logo Aplikasi MySBE" width={125} height={125} className="rounded-lg" />
              </Link>  
          </div>
        <Separator className="opacity-50 md:block hidden" />
      </div>

      <div className="md:grid md:grid-cols-2 flex flex-col w-full h-auto pt-8">
        <div className="md:order-1 order-2 flex flex-col items-center md:items-start text-center md:text-left">
          <div>
          <div className="w-full max-w-[200px] md:mx-0 mx-auto h-auto pb-4">
            <Link href="/">
              <Image
                src="/images/roadmaster/logo_roadmaster.webp"
                alt="Logo Roadmaster"
                width={800}
                height={600}
                className="w-full h-full object-contain transition-transform duration-300 hover:scale-110"
                loading="lazy"
              />
            </Link>
          </div>
            <h3 className="text-lg lg:text-2xl font-bold text-white pb-1">
              CV. Sinar Baja Electric Surabaya
            </h3>
            <div className="py-4">
              <Separator className="bg-foreground w-56 h-2 mx-auto md:mx-0" />
            </div>
            <div className="text-xs text-white pb-4 font-light space-y-2 sm:block hidden">
              <div className="flex items-center justify-center md:justify-start">
                <MapPin size={15} className="mr-2" />
                <h4>Jl. Margomulyo No.5, Surabaya 60186, Jawa Timur, Indonesia</h4>
              </div>
              <div className="flex items-center justify-center md:justify-start">
                <Phone size={15} className="mr-2" />
                <h4>+62 812-3183-3504</h4>
              </div>
              <div className="flex items-center justify-center md:justify-start">
                <Mail size={15} className="mr-2" />
                <h4>legacyspeaker01@gmail.com</h4>
              </div>
            </div>
            <h4 className="text-xs text-white pb-1 font-light  sm:block hidden">
              Showroom Jakarta: Ruko Glodok Plaza F-97, Jl. Raya Pinangsia 1, Glodok, Tamansari, Jakarta Barat
            </h4>
            <h4 className="text-xs text-white pb-1 font-light  sm:block hidden">
              Showroom Surabaya: Jl. Genteng Besar No. 15A - Genteng, Surabaya
            </h4>
          </div>
        </div>
        <div className="md:order-2 order-1 flex flex-col items-center md:items-end w-full h-full">
          <div className='md:block hidden'>
            <FindUs scrolled={false} type="footer" />
            <div className='text-white py-4 text-right'>
              Download Aplikasinya Sekarang
            </div>
              <Link href="https://play.google.com/store/apps/details?id=id.sbe.mysbe.customer&hl=id&pli=1" target="__blank" className="flex text-white font-bold text-end justify-end">
                <Image src={"/images/roadmaster/mysbe.webp"} alt="Logo Aplikasi MySBE" width={125} height={125} className="rounded-lg" />
              </Link>  
          </div>
        </div>
      </div>

        <div className='text-center text-xs justify-center text-white md:pt-16 pt-8 font-light'>
          © {new Date().getFullYear()} ROADMASTER - ALL RIGHTS RESERVED
        </div>
      </div>
    </div>
  );
}
