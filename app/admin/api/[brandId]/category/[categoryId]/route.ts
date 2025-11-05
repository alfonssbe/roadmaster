import { NextResponse } from "next/server";

import prismadb from "@/lib/prismadb";
import { checkAuth, checkBearerAPI, getSession } from "@/app/admin/actions";
import { revalidatePath } from "next/cache";
import path from 'path';
import fs from 'fs/promises';

const slugify = (str: string): string => str.toLowerCase()
                            .replace(/[^a-z0-9]+/g, '-')
                            .replace(/(^-|-$)+/g, '');

export async function GET(req: Request, props: { params: Promise<{ categoryId: string }> }) {
  const params = await props.params;
  try {
    if (!params.categoryId) {
      return new NextResponse("Category id is required", { status: 400 });
    }

    const Category = await prismadb.allCategory.findUnique({
      where: {
        id: params.categoryId,
        type: "Category"
      }
    });
  
    return NextResponse.json(Category);
  } catch (error) {
    console.log('[CATEGORY_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};

export async function DELETE(
  req: Request,
  props: { params: Promise<{ categoryId: string, brandId: string }> }
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

    if (!params.categoryId) {
      return new NextResponse("Category id is required", { status: 400 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }   

    const stillused = await prismadb.allProductCategory.findMany({
      where:{
        categoryId: params.categoryId,
        type: "Category"
      }
    })

    if(stillused.length!=0){
      return NextResponse.json("stillused")
    }

    await prismadb.allCategory.deleteMany({
      where: {
        id: params.categoryId
      }
    });

    const allSub = await prismadb.allProductCategory.findMany({
      where:{
        type: "Sub Category",
      }
    })
    const allSubSub = await prismadb.allProductCategory.findMany({
      where:{
        type: "Sub Sub Category",
      }
    })
    allSub && allSub.length > 0 && allSub.forEach(sub => {
      revalidatePath(`/drivers/${sub.slug}`);
      allSubSub && allSubSub.length > 0 && allSubSub.forEach(subsub => {
        revalidatePath(`/drivers/${sub.slug}/${subsub.slug}`);
      })
    });
  
    return NextResponse.json("success");
  } catch (error) {
    console.log('[CATEGORY_DELETE]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};


export async function PATCH(
  req: Request,
  props: { params: Promise<{ categoryId: string, brandId: string }> }
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

    const { type, name, description, thumbnail_url } = body;

    if (!name) {
      return new NextResponse("Name is required", { status: 400 });
    }

    if (!params.categoryId) {
      return new NextResponse("Category id is required", { status: 400 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }    







    if(params.categoryId != 'new'){
      const oldUrl = await prismadb.allCategory.findMany({
        where: {
          id: params.categoryId
        },
        select:{
          thumbnail_url: true
        }
      })
      //Delete physical files
      if(oldUrl && oldUrl.length > 0) {
        oldUrl.map( async (val) => {
          const ImgPath = path.join(process.cwd(), val.thumbnail_url);
          try {
            await fs.unlink(ImgPath);
          } catch (error) {
            console.warn(`Could not delete file ${val.thumbnail_url}:`, error);
          }
        })
      }

      await prismadb.allCategory.update({
        where: {
          id: params.categoryId
        },
        data: { 
          type,
          name,
          slug: slugify(name),
          description,
          thumbnail_url,
          updatedAt: new Date(),
          updatedBy: session.name,
        },
      })
      await prismadb.allProductCategory.updateMany({
        where: {
          categoryId: params.categoryId,
          type
        },
        data:{
          name,
          slug: slugify(name),
          updatedAt: new Date(),
        }
      })
    }
    else{
      await prismadb.allCategory.create({
        data: {
          name,
          description,
          brandId: params.brandId,
          type,
          slug: slugify(name),
          thumbnail_url,
          updatedAt: new Date(),
          createdAt: new Date(),
          updatedBy: session.name,
        },
      })
      await prismadb.allProductCategory.updateMany({
        where: {
          categoryId: params.categoryId,
          type
        },
        data:{
          name,
          updatedAt: new Date(),
          slug: slugify(name)
        }
      })
    }


    if( type === "Sub Category" ){
      revalidatePath(`/drivers/${slugify(name)}`);
    }
    else if( type === "Sub Sub Category" ){ 
      const allSub = await prismadb.allProductCategory.findMany({
        where:{
          type: "Sub Category",
        }
      })
      allSub && allSub.length > 0 && allSub.forEach(sub => {
        revalidatePath(`/drivers/${sub.slug}/${slugify(name)}`);
      });
    }

    return NextResponse.json("success");
  } catch (error) {
    console.log('[CATEGORY_PATCH]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};
