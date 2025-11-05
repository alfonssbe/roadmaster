import { NextResponse } from "next/server";

import prismadb from "@/lib/prismadb";
import { checkAuth, checkBearerAPI, getSession } from "@/app/admin/actions";
import { revalidatePath } from "next/cache";
import path from 'path';
import fs from 'fs/promises';

const slugify = (str: string): string => str.toLowerCase()
                            .replace(/[^a-z0-9]+/g, '-')
                            .replace(/(^-|-$)+/g, '');

export async function GET(req: Request, props: { params: Promise<{ productId: string }> }) {
  const params = await props.params;
  try {
    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }

    const prod = await prismadb.product.findUnique({
      where: {
        id: params.productId,
      }
    });
  
    return NextResponse.json(prod);
  } catch (error) {
    console.log('[SINGLE_PRODUCT_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};

export async function DELETE(
  req: Request,
  props: { params: Promise<{ productId: string, brandId: string }> }
) {
  const params = await props.params;
  try {
    const session = await getSession();
    if(!session.isLoggedIn){
      return NextResponse.json("expired_session")
    }

    if(!(await checkBearerAPI(session))){
      session.destroy();
      return NextResponse.json("invalid_token")
    }

    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }   

    const oldUrl = await prismadb.product.findMany({
      where: {
        id: params.productId
      },
      select:{
        cover_img: true
      }
    })
    //Delete physical files
    if(oldUrl && oldUrl.length > 0) {
      oldUrl.map( async (val) => {
        const ImgPath = path.join(process.cwd(), val.cover_img);
        try {
          await fs.unlink(ImgPath);
        } catch (error) {
          console.warn(`Could not delete file ${val.cover_img}:`, error);
        }
      })
    }

    await prismadb.specificationconnector.deleteMany({
      where: {productId: params.productId}
    })
    await prismadb.allProductCategory.deleteMany({
      where: {productId: params.productId}
    })
    await prismadb.featured_Image.deleteMany({
      where: {productId: params.productId}
    })

    await prismadb.product.deleteMany({
      where: {
        id: params.productId
      }
    });
  
    return NextResponse.json("success");
  } catch (error) {
    console.log('[SINGLE_PRODUCT_DELETE]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};


export async function PATCH(
  req: Request,
  props: { params: Promise<{ productId: string, brandId: string }> }
) {
  const params = await props.params;
  try {
    const session = await getSession();
    
    if(!session.isLoggedIn || !session){
      return NextResponse.json("expired_session")
    }

    if(!(await checkBearerAPI(session))){
      session.destroy();
      return NextResponse.json("invalid_token")
    }

    const body = await req.json();

    const { name, description, cover_img } = body;

    if (!name) {
      return new NextResponse("Name is required", { status: 400 });
    }

    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }    







    if(params.productId != 'new'){
      const oldUrl = await prismadb.product.findMany({
        where: {
          id: params.productId
        },
        select:{
          cover_img: true
        }
      })
      //Delete physical files
      if(oldUrl && oldUrl.length > 0) {
        oldUrl.map( async (val) => {
          const ImgPath = path.join(process.cwd(), val.cover_img);
          try {
            await fs.unlink(ImgPath);
          } catch (error) {
            console.warn(`Could not delete file ${val.cover_img}:`, error);
          }
        })
      }

      await prismadb.product.update({
        where: {
          id: params.productId
        },
        data: { 
          name,
          slug: slugify(name),
          description,
          cover_img,
          updatedAt: new Date(),
          updatedBy: session.name,
        },
      })
    }
    else{
      await prismadb.product.create({
        data: {
          name,
          description,
          brandId: params.brandId,
          slug: slugify(name),
          cover_img,
          updatedAt: new Date(),
          createdAt: new Date(),
          updatedBy: session.name,
        },
      })
    }


  
    return NextResponse.json("success");
  } catch (error) {
    console.log('[SINGLE_PRODUCT_PATCH]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};
