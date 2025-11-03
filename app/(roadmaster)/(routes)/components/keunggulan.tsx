import Image from 'next/image';

const Keunggulan: React.FC = () => {
  return (
    <div className="relative w-full h-fit bg-white">

      <div className="container mx-auto xl:px-36 lg:px-20 px-10 py-6 h-fit">
          {/* <Link key={index} href={series.href} className="group cursor-pointer relative"> */}
          <div className='block gap-6'>


            <div className="overflow-hidden block h-full">
              <div className="flex flex-col items-center justify-center h-full">
                <Image src={`/images/roadmaster/indo_flag.webp`} alt="Bendera Indonesia" width={50} height={50} className="w-14 h-10 shadow-md" />
                <div className="pt-4">
                  <h2 className="md:text-xl text-base text-black text-center">
                    100% Karya Anak Bangsa
                  </h2>
                </div>
              </div>
            </div>

          </div>

          {/* </Link> */}
        
      </div>
    </div>
  );
};

export default Keunggulan;
