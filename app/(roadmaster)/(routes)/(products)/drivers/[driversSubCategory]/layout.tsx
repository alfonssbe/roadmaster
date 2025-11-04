import getSubCatNameBySlug from "@/app/(roadmaster)/actions/get-SubCat_Name"
import { allDriversSubCat } from "@/lib/gsp_var";
import { Metadata, ResolvingMetadata } from "next"

// export const revalidate = 86400
// export async function generateStaticParams() {
//   return allDriversSubCat.map((driversSubCategory) => ({ driversSubCategory }));
// }

type Props = {
  params: Promise<{ driversSubCategory: string }>
}
 
export async function generateMetadata(props: Props, parent: ResolvingMetadata): Promise<Metadata> {
  const params = await props.params;
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const subCatName = await getSubCatNameBySlug(params.driversSubCategory)
  const previousImages = (await parent).openGraph?.images || []
  const logo_URL = `${baseUrl}/images/roadmaster/logo_roadmaster.webp`
  const logo_ALT = `Roadmaster Logo`
 
  return {
    title: subCatName.name.concat(" Series | Roadmaster"),
    description: "Semua Seri ".concat(subCatName.name, " milik Roadmaster"),
    applicationName: 'Roadmaster',
    keywords: ["Seri ".concat(subCatName.name, " milik Roadmaster")],
    openGraph: {
      title: `Seri ${subCatName.name} | Roadmaster`,
      description: "Semua Seri ".concat(subCatName.name, " milik Roadmaster"),
      url: `${baseUrl}/drivers/${subCatName.name.toLowerCase()}`,
      siteName: "Roadmaster",
      images: [
        {
          url: logo_URL,
          width: 800,
          height: 800,
          alt: logo_ALT,
        },
        ...previousImages,
      ],
      locale: 'id_ID',
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title: `Seri ${subCatName.name} | Roadmaster`,
      description: "Semua Seri ".concat(subCatName.name, " milik Roadmaster"),
      images: [
        {
          url: logo_URL,
          width: 800,
          height: 800,
          alt: logo_ALT,
        },
      ],
    },
    alternates: {
      canonical: `${baseUrl}/drivers/${subCatName.name.toLowerCase()}`,
    },
  }
}

export default function ProductBySubCategoryLayout({
    children,
  }: {
    children: React.ReactNode
  }
)
{
  return(
    <>
      {children}
    </>
  )
  }