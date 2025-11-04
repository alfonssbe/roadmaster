import Image from "next/image"

export default function Featured() {
  return (
    <div className="flex flex-col lg:flex-row lg:justify-between lg:items-center min-h-screen px-6 py-12 lg:py-0 bg-foreground">
      <div className="flex-1 h-[400px] lg:h-[800px] mb-8 lg:mb-0 lg:order-2 object-right">
        <Image
          src="/images/roadmaster/tentang-kami.webp"
          alt="Tentang Roadmaster"
          width={600}
          height={800}
          className="w-1/2 h-full object-contain"
        />
      </div>
      <div className="flex-1 text-left lg:h-[800px] flex flex-col justify-center lg:mr-12 lg:order-1 gap-4">
        <Image
          src="/images/roadmaster/logo_roadmaster.webp"
          alt="Logo Roadmaster"
          width={500}
          height={500}
          className="w-1/3 h-fit"
        />
        <h3 className="text-xl lg:text-3xl mb-8 text-background">
          Perkuat setiap momen di rumah Anda dengan Roadmaster. Dirancang untuk menghasilkan bass yang solid dan berenergi, Roadmaster memberikan pengalaman audio yang hidup dan penuh karakter — cocok untuk menonton film, mendengarkan musik favorit, hingga menikmati waktu santai dengan kualitas suara yang memukau.
        </h3>
      </div>
    </div>
  )
}
