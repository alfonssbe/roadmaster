import { NextResponse } from 'next/server';

import prismadb from '@/lib/prismadb';
import { checkAuth, checkBearerAPI, getSession } from '@/app/admin/actions';
import { revalidatePath } from 'next/cache';

export async function POST(
  req: Request,
  props: { params: Promise<{ brandId: string, productId: string }> }
) {
  const params = await props.params;
  const allResults = [];
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
    
    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }

    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }

    for (const item of body) {
      const { 
        id,
        brandId,
        type,
        name,
        slug,
        description,
        thumbnail_url,
        createdAt,
        updatedAt
      } = item;
    
      const allproductcategory = await prismadb.allProductCategory.create({
        data: {
          productId: params.productId,
          categoryId: id,
          type,
          name,
          slug,
          createdAt: new Date(),
          updatedAt: new Date(),
        }
      });
      allResults.push(allproductcategory);
      
    }

    const updatedProduct = await prismadb.product.update({
      where: {
        id : params.productId
      },
      data: {
        updatedAt: new Date(),
        updatedBy: session.name
      }
    });

    const productSlug = updatedProduct.slug;
    revalidatePath(`/products/${productSlug}`);
    if( allResults && allResults.length > 0 ) {
      const subCategories = allResults.filter(item => item.type === 'Sub Category') || [];
      const subSubCategories = allResults.filter(item => item.type === 'Sub Sub Category') || [];
      subCategories.forEach(sub => {
        revalidatePath(`/drivers/${sub.slug}`);
        subSubCategories.forEach(subsub => {
          revalidatePath(`/drivers/${sub.slug}/${subsub.slug}`);
        });
      });
    }

    return NextResponse.json("success");
  } catch (error) {
    console.log('[ALL_PRODUCT_CATEGORY_POST]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
  // return NextResponse.json(allproductcategory);
};

export async function GET(
  req: Request,
  props: { params: Promise<{ brandId: string, productId: string }> }
) {
  const params = await props.params;
  try {
    if (!params.brandId) {
      return new NextResponse("Brand id is required", { status: 400 });
    }

    const allProductCategory = await prismadb.allProductCategory.findMany({
      where: {
        productId: params.productId
      }
    });
    return NextResponse.json(allProductCategory);
  } catch (error) {
    console.log('[ALL_PRODUCT_CATEGORY_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};

export async function DELETE(
  req: Request,
  props: { params: Promise<{ brandId: string, productId: string }> }
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

    if (!params.brandId) {
      return new NextResponse("Brand id is required", { status: 400 });
    }

    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }

    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }

    const allproductcategory = await prismadb.allProductCategory.deleteMany({
      where: {
        productId: params.productId
      }
    });
    
    const updatedProduct = await prismadb.product.update({
      where: {
        id : params.productId
      },
      data: {
        updatedAt: new Date(),
        updatedBy: session.name
      }
    });

    const productSlug = updatedProduct.slug;
    revalidatePath(`/products/${productSlug}`);
  
    return NextResponse.json(allproductcategory);
  } catch (error) {
    console.log('[ALL_PRODUCT_CATEGORY_DELETE]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};


export async function PATCH(
  req: Request,
  props: { params: Promise<{ brandId: string, productId: string }> }
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

    if (!params.brandId) {
      return new NextResponse("Brand id is required", { status: 400 });
    }

    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }

    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }

    const deleteOldCategories = await prismadb.allProductCategory.deleteMany({
      where: {
        productId: params.productId
      }
    });
  
    const allResults = []
    for (const item of body) {
      const { 
        id,
        brandId,
        type,
        name,
        slug,
        description,
        thumbnail_url,
        createdAt,
        updatedAt
      } = item;
      const allproductcategory = await prismadb.allProductCategory.create({
        data: {
          productId: params.productId,
          categoryId: id,
          type,
          name,
          slug,
          createdAt: new Date(),
          updatedAt: new Date()
        }
      });
      allResults.push(allproductcategory);
    }

    const updatedproduct = await prismadb.product.update({
      where: {
        id : params.productId
      },
      data: {
        updatedAt: new Date(),
        updatedBy: session.name
      }
    });
    
    const productSlug = updatedproduct.slug;
    revalidatePath(`/products/${productSlug}`);
    if( allResults && allResults.length > 0 ) {
      const subCategories = allResults.filter(item => item.type === 'Sub Category') || [];
      const subSubCategories = allResults.filter(item => item.type === 'Sub Sub Category') || [];
      subCategories.forEach(sub => {
        revalidatePath(`/drivers/${sub.slug}`);
        subSubCategories.forEach(subsub => {
          revalidatePath(`/drivers/${sub.slug}/${subsub.slug}`);
        });
      });
    }
  
    const responseData = {
      deletedCount: deleteOldCategories.count,
      addedRecords: allResults,
      updatedTime: updatedproduct
    };


    return NextResponse.json(responseData);
  } catch (error) {
    console.log('[ALL_CATEGORY_PRODUCT_PATCH]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};

