import { Metadata } from "next"

export const metadata: Metadata = {
    title: 'All Products',
    description: 'Semua Produk milik Roadmaster',
}

export default function ProductLayout({
    children,
  }: {
    children: React.ReactNode
  }) {

    return(
        <>
          {children}
        </>
    )
}