import getSubCatNameBySlug from "@/app/(roadmaster)/actions/get-SubCat_Name"
import getSubSubCatNameBySlug from "@/app/(roadmaster)/actions/get-SubSubCat_Name"
import { allDriversSubSubCat } from "@/lib/gsp_var";
import { Metadata, ResolvingMetadata } from "next"

// export const revalidate = 86400
// export async function generateStaticParams() {
//   return allDriversSubSubCat.map(([driversSubCategory, driversSubSubCategory]) => ({
//     driversSubCategory,
//     driversSubSubCategory,
//   }));
// }

type Props = {
  params: Promise<{ driversSubCategory: string, driversSubSubCategory: string }>
}
 
export async function generateMetadata(props: Props, parent: ResolvingMetadata): Promise<Metadata> {
  const params = await props.params;
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const [subCatNameResult, subSubCatNameResult] = await Promise.allSettled([
    getSubCatNameBySlug(params.driversSubCategory),
    getSubSubCatNameBySlug(params.driversSubSubCategory),
  ]);

  const subCatName = subCatNameResult.status === 'fulfilled' ? subCatNameResult.value : { name: '' };
  const subSubCatName = subSubCatNameResult.status === 'fulfilled' ? subSubCatNameResult.value : { name: '' };
    const previousImages = (await parent).openGraph?.images || []
  const logo_URL = `${baseUrl}/images/roadmaster/logo_legacy.webp`
  const logo_ALT = `Logo Roadmaster`
  return {
    title: subCatName.name.concat(" ", subSubCatName.name," Series | Roadmaster"),
    description: "Semua Seri ".concat(subCatName.name, " ", subSubCatName.name, " milik Roadmaster"),
    applicationName: 'Roadmaster',
    keywords: ["Seri ".concat(subCatName.name, " ", subSubCatName.name, " milik Roadmaster")],
    openGraph: {
      title: subCatName.name.concat(" ", subSubCatName.name," Series | Roadmaster"),
      description: "Semua Seri ".concat(subCatName.name, " ", subSubCatName.name, " milik Roadmaster"),
      url: `${baseUrl}/drivers/${subCatName.name.toLowerCase()}/${subSubCatName.name.toLowerCase()}`,
      siteName: "Roadmaster",
      images: [
        // {
        //   url: logo_URL,
        //   width: 1200,
        //   height: 630,
        //   alt: subCatName.name.concat(" ", subSubCatName.name," Series"),
        // },
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
      title: subCatName.name.concat(" ", subSubCatName.name," Series | Roadmaster"),
      description: "Semua Seri ".concat(subCatName.name, " ", subSubCatName.name, " milik Roadmaster"),
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
      canonical: `${baseUrl}/drivers/${subCatName.name.toLowerCase()}/${subSubCatName.name.toLowerCase()}`,
    },
  }
}

export default function ProductBySubSubCategoryLayout({
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