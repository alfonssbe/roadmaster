import prismadb from "@/lib/prismadb";
import { NextResponse } from "next/server";

export async function GET(
    req: Request,
  ) {
    try {
      const product = await prismadb.product.findMany({
        where: {
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
      console.log('[ALL_PRODUCT_JSON_GET]', error);
      return new NextResponse("Internal error", { status: 500 });
    }
  };