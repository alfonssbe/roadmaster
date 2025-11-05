import Footer from './components/footer'
import Navbar from './components/navbar'
import NextTopLoader from "nextjs-toploader";

export default function RootRoadmasterLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <div className='min-h-screen'>
      {/* <NextTopLoader color='#ee3239' showSpinner={false}/> */}
      <div className="flex flex-col min-h-screen">
        <main className="grow">
          {children}
        </main>
        {/* <Footer /> */}
      </div>
    </div>
  )
}
