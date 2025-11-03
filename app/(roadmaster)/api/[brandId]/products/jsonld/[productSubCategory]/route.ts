import prismadb from "@/lib/prismadb";
import { NextResponse } from "next/server";

export async function GET(req: Request, props: { params: Promise<{ productSubCategory: string }> }) {
  const params = await props.params;
  try {
    if (!params.productSubCategory) {
      return new NextResponse("Product Sub Category is required", { status: 400 });
    }
    
    const productIdbyCat =  await prismadb.allProductCategory.findMany({
      where:{
          slug: params.productSubCategory,
          type: 'Sub Category'
      },
      select:{
          productId: true
      }
    })

    const productIds = productIdbyCat.map((value) => value.productId)

    const product = await prismadb.product.findMany({
      where: {
        id:{
          in: productIds
        },
        isArchived: false
      },
      select: {
        name: true,
        slug: true,
        cover_img: {
          select: {
            url: true
          }
        },
        id: true
      }
    });
    return NextResponse.json(product);
  } catch (error) {
    console.log('[PRODUCT_BY_SUB_CATEGORY_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};