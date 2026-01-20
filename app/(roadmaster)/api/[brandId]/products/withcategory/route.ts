import prismadb from "@/lib/prismadb";
import { NextResponse } from "next/server";

export async function GET(req: Request) {
  try {
    const product = await prismadb.product.findMany({
      where: {
        isArchived: false
      },
      include: {
        allCat: true,
      }
    });

    const allCategory = await prismadb.allcategory.findMany({})

    if (!product || product.length === 0) {
      return new NextResponse("Product not found", { status: 404 });
    }

    return NextResponse.json({
      product,
      allCategory
    });
  } catch (error) {
    console.log('[PRODUCT_WITH_CATEGORY_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
}
