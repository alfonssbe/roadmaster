import { Button } from '@/components/ui/button';
import Link from 'next/link';
import { Separator } from '../../../../components/ui/separator';
// import { LazyImageCustom } from '../../components/lazyImageCustom';
import Image from 'next/image';

const History: React.FC = () => {
  return (
    <div className="relative w-full h-fit bg-white">
     <div className="container mx-auto xl:px-36 lg:px-20 px-10 md:py-4 py-12 h-fit md:flex block items-center">
        <div className='h-[500px] w-fit'>
          <Image
            src='/images/roadmaster/tentang-kami-white.webp'
            alt='Tentang Roadmaster'
            width={500}
            height={300}
            className='h-[500px] w-fit z-10'
          />
        </div>
        <div className='md:pl-8 md:w-3/5 w-full'>
          <h2 className='text-3xl font-bold text-black pb-4 md:pt-0 pt-16'>
            TENTANG KAMI
          </h2>
          <Separator className='bg-foreground w-56 h-2'/>
          <h3 className='py-4 text-black pr-4 md:w-4/5 w-full'>
            <p>
              Sinar Baja Electric (SBE), berdiri sejak 1981, kini menjadi produsen loudspeaker terbesar di Asia Tenggara. Dengan sertifikasi <b>ISO 9001</b>, <b>ISO 14001</b>, <b>ISO 45001</b>, dan <b>IATF 16949</b>, SBE fokus pada produk berkualitas tinggi.
            </p>
            <p>
              Merek lokalnya, Legacy, Sphinx, dan Prestige, dikenal dalam segmen Car Audio berkat desain berkualitas, bahan premium, dan variasi model yang memenuhi kebutuhan konsumen.
            </p>
          </h3>
          <Button asChild variant={'secondary'} className='md:w-fit w-full'>
            <Link href="/about-us" className='text-white font-extrabold'>ABOUT US</Link>
          </Button>
        </div>
      </div>
    </div>
  );
}

export default History;
