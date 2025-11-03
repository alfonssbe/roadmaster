import { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Comparison',
  description: 'Bandingkan produk Roadmaster yang telah Anda pilih untuk menemukan pilihan terbaik.',
}

export default function ComparisonLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <>
      {children}
    </>
  )
}
