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
          <h3 className='py-2 text-black pr-4 w-full'>
            <p>Hadirkan kekuatan suara di setiap momen bersama Roadmaster!
            Dengan dentuman bass yang dalam, bertenaga, dan memukau, Roadmaster bukan sekadar speaker rumahan — ia adalah mesin pengalaman audio yang menggugah emosi.</p>
          </h3>
          <h3 className='py-2 text-black pr-4 w-full'>
            <p>Dari film aksi yang terasa lebih hidup hingga musik favorit yang meledak penuh intensitas, Roadmaster memastikan setiap detik terdengar lebih nyata, lebih mendalam, dan lebih menggetarkan.</p>
          </h3>
          <h3 className='py-2 text-black pr-4 w-full'>
            <p>Roadmaster — rasakan bass yang bukan hanya terdengar, tapi juga menghentak sampai ke hati.</p>
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
