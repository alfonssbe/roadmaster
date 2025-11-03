import { Phone } from "lucide-react";
import { Separator } from "../../../../components/ui/separator";

export default function Distributor() {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';

  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "Organization",
    "name": "Roadmaster",
    "url": `${baseUrl}/distributor`,
    "logo": `${baseUrl}/images/roadmaster/logo_legacy.webp`,
    "description": "Temukan Semua Distributor Roadmaster",
    "subOrganization": [
      {
        "@type": "LocalBusiness",
        "name": "Seni Musik - Surabaya",
        "telephone": "031-3815728",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Surabaya",
          "addressRegion": "East Java",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Mutiara Jaya - Surabaya",
        "telephone": ["031-5314275","0821-40191857"],
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Surabaya",
          "addressRegion": "East Java",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Surya Pratama - Surabaya",
        "telephone": "031-7490490",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Surabaya",
          "addressRegion": "East Java",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Maju Mapan - Malang",
        "telephone": ["0341-566616","0341-575133"],
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Malang",
          "addressRegion": "East Java",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Mapan Abadi - Pati",
        "telephone": "0822-26465225",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Pati",
          "addressRegion": "Central Java",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Anugerah - Jakarta",
        "telephone": ["021-6590134", "021-6590151"],
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Jakarta",
          "addressRegion": "DKI Jakarta",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Indomas Perkasa - Jakarta",
        "telephone": "021-6613249",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Jakarta",
          "addressRegion": "DKI Jakarta",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Alvaro Artha Jaya - Jakarta",
        "telephone": "0821-12345228",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Jakarta",
          "addressRegion": "DKI Jakarta",
          "addressCountry": "ID"
        }
      },
      {
        "@type": "LocalBusiness",
        "name": "Akai Electronic - Bandung",
        "telephone": "022-7276788",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "Bandung",
          "addressRegion": "West Java",
          "addressCountry": "ID"
        }
      },
    ]
  }
  
  

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <h1 className='sr-only'>Distributor | Roadmaster</h1>
  <div className="bg-white -z-10">
  <div className="relative w-full container mx-auto xl:px-36 lg:px-20 px-10 pb-4 pt-16 h-fit">
        <div className="pb-4">
          <div className='text-4xl font-bold text-black pb-4'>
            Semua List Distributor
          </div>
          <Separator className='bg-foreground w-56 h-2'/>
        </div>
      </div>
    <div className="md:grid md:grid-cols-2 block relative w-full bg-white container mx-auto xl:px-36 lg:px-20 px-10 pb-4 h-fit gap-4">
    <div>
      <div className="pb-4">
        <div className="border-2 rounded-lg p-4 shadow-lg border-secondary">
          <div className='pb-4'>
            <h2 className='text-4xl font-bold text-black pb-4'>
              SURABAYA
            </h2>
          </div>
          <div className="block pb-2">
            <h3 className="font-bold text-black pb-2 text-2xl">Seni Musik</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:0313815728" className="text-blue-600 hover:underline">
                  031-3815728
                </a>
              </h4>
            </div>
          </div>
          <div className="block pb-2">
            <h3 className="font-bold text-black pb-2 text-2xl">Mutiara Jaya</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:0315314275" className="text-blue-600 hover:underline">
                  031-5314275
                </a>
                ,{" "}
                <a href="tel:082140191857" className="text-blue-600 hover:underline">
                  0821-40191857
                </a>
              </h4>
            </div>
          </div>
          <div className="block pb-2">
            <h3 className="font-bold text-black pb-2 text-2xl">Surya Pratama</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:0317490490" className="text-blue-600 hover:underline">
                  031-7490490
                </a>
              </h4>
            </div>
          </div>
        </div>
      </div>

      <div className="pb-4">
        <div className="border-2 rounded-lg p-4 shadow-lg border-secondary">
          <div className='pb-4'>
            <h2 className='text-4xl font-bold text-black pb-4'>
              MALANG
            </h2>
          </div>
          <div className="block pb-2">
            <h3 className="font-bold text-black pb-2 text-2xl">Maju Mapan</h3>
            <div className="flex text-black pb-4 items-center">
              <div className="pr-2">
                <Phone size={20} />
              </div>
              <h4>
                :{" "}
                <a href="tel:0341566616" className="text-blue-600 hover:underline">
                  0341-566616
                </a>
                ,{" "}
                <a href="tel:0341575133" className="text-blue-600 hover:underline">
                  0341-575133
                </a>
              </h4>
            </div>
          </div>
        </div>
      </div>

      <div className="pb-4">
        <div className="border-2 rounded-lg p-4 shadow-lg border-secondary">
          <div className='pb-4'>
            <h2 className='text-4xl font-bold text-black pb-4'>
              PATI
            </h2>
          </div>
          <div className="block pb-2">
            <h3 className="font-bold text-black pb-2 text-2xl">Mapan Abadi</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:082226465225" className="text-blue-600 hover:underline">
                  0822-26465225
                </a>
              </h4>
            </div>
          </div>
        </div>
      </div>
    </div>



    <div className="">
    <div className="pb-4">
      <div className="border-2 rounded-lg p-4 shadow-lg border-secondary">
        <div className='pb-4'>
          <h2 className='text-4xl font-bold text-black pb-4'>
          JAKARTA
          </h2>
        </div>
        <div className="block pb-2">
          <h3 className="font-bold text-black pb-2 text-2xl">Anugerah</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:0216590134" className="text-blue-600 hover:underline">
                  021-6590134
                </a>
                ,{" "}
                <a href="tel:0216590151" className="text-blue-600 hover:underline">
                  021-6590151
                </a>
              </h4>
            </div>
        </div>
        <div className="block pb-2">
          <h3 className="font-bold text-black pb-2 text-2xl">Indomas Perkasa</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:0216613249" className="text-blue-600 hover:underline">
                  021-6613249
                </a>
              </h4>
            </div>
        </div>
        <div className="block pb-2">
          <h3 className="font-bold text-black pb-2 text-2xl">Alvaro Artha Jaya</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:082112345228" className="text-blue-600 hover:underline">
                  0821-12345228
                </a>
              </h4>
            </div>
        </div>
      </div>
      </div>


      <div className="pb-4">
      <div className="border-2 rounded-lg p-4 shadow-lg border-secondary">
        <div className='pb-4'>
          <h2 className='text-4xl font-bold text-black pb-4'>
            BANDUNG
          </h2>
        </div>
        <div className="block pb-2">
          <h3 className="font-bold text-black pb-2 text-2xl">Akai Electronic</h3>
            <div className="flex text-black pb-4">
              <div className="pr-2"><Phone size={20} /></div>
              <h4>
                :{" "}
                <a href="tel:0227276788" className="text-blue-600 hover:underline">
                  022-7276788
                </a>
              </h4>
            </div>
        </div>
      </div>
      </div>

    </div>

    </div>
    </div>
    </>
  );
}