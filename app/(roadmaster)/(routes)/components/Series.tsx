import Image from 'next/image';
import Link from 'next/link';
import { Separator } from '../../../../components/ui/separator';

const Series: React.FC = () => {
  return (
    <div className="relative w-full h-fit bg-white">
      <div className="container mx-auto xl:px-36 lg:px-20 px-10 xl:pt-8 lg:pt-6 pt-4 h-fit items-center text-center">
        <h2 className="text-3xl font-bold text-black pb-4">PILIH SPEAKER ANDA</h2>
        <Separator className="bg-foreground w-56 h-2 mx-auto" />
      </div>

      <div className="container mx-auto xl:px-36 lg:px-20 px-10 xl:pb-8 lg:pb-6 pb-4 pt-4 h-fit grid lg:grid-cols-3 gap-6">
        {[
          {
            href: '/drivers/energy',
            src: '/images/roadmaster/energychoicecrop.webp',
            alt: 'Energy Series Logo',
            title: 'ENERGY',
            description: 'Tenaga Maksimal, Energi Efisien.',
          },
          {
            href: '/drivers/legacy',
            src: '/images/roadmaster/legacychoice2crop.webp',
            alt: 'Logo Roadmaster',
            title: 'LEGACY',
            description: 'Presisi Suara di Setiap Nada.',
          },
          {
            href: '/drivers/sparta',
            src: '/images/roadmaster/spartachoicecrop.webp',
            alt: 'Sparta Series Logo',
            title: 'SPARTA',
            description: 'Performa Handal, Harga Optimal.',
          },
        ].map((series, index) => (
          <Link key={index} href={series.href} className="group cursor-pointer relative">
            <div className="rounded-lg border shadow-lg overflow-hidden flex flex-row h-full">
              <Image
                src={series.src.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${series.src}` : series.src }
                alt={series.alt}
                width={1000}
                height={1000}
                className="object-cover aspect-4/3 lg:w-1/2 sm:w-1/4 w-7/12 h-full order-2"
                placeholder="blur"
                priority
                blurDataURL="data:image/webp;base64,[base64-encoded-string]"
              />
              <div className="p-4 grow flex flex-col order-1">
                <h3 className="font-bold lg:text-4xl md:text-2xl text-xl text-secondary text-left">
                  {series.title}
                </h3>
                <h4 className="md:text-base text-sm text-black text-left ">
                  {series.description}
                </h4>
              </div>
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
};

export default Series;
