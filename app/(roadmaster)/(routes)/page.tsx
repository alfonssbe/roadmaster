import Hero from './components/Hero';
import Series from './components/Series';
import History from './components/History';
import Youtube from './components/Youtube';
import News from './components/news';
import Distributor from './components/distributor';
import Keunggulan from './components/keunggulan';

export default function LandingPageRoadmaster() {  
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "Organization",
    "name": "Roadmaster",
    "url": `${baseUrl}`,
    "logo": `${baseUrl}/images/roadmaster/logo_legacy.webp`,
    "sameAs": [
      "https://www.instagram.com/legacy.speaker",
    ]
  };
  
  return (
    <>
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
        />
        <h1 className='sr-only'>Welcome to Roadmaster Official Website!</h1>
      <Hero />
      <Series />
      <News/>
      <History />
      <Youtube />
      <Keunggulan />
      <Distributor />
    </>
  );
}
