import { ChildSpecificationProp } from "@/app/(roadmaster)/types";
import { allproductsSubCat } from "@/app/(roadmaster)/utils/filterPageProps";
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

    let neededSpec = allproductsSubCat
      const allTypes = await prismadb.allCategory.findMany({
        where: {
          type: 'Sub Sub Category'
        },
        select:{
          slug: true
        }
      })
      
      const allBrand = await prismadb.allCategory.findMany({
        where: {
          type: 'Sub Category'
        }
      })

    const allSpecsNeeded = await prismadb.dynamicspecification.findMany({
      where: {
        slug: {
          in : neededSpec.map((val) => val)
        }
      },
      select: {
        id: true
      }
    })

    // if(params.brandId === process.env.NEXT_PUBLIC_SB_AUDIENCE_ID) {     
    const products = await prismadb.product.findMany({
      where: {
        id: {
          in: productIds
        },
        isArchived: false
      },
      include: {
        allCat: {
          where: {
            type: {
              in: ['Sub Category', 'Sub Sub Category']
            }
          },
          select: {
            name: true,
            slug: true,
            type: true
          }
        },
        cover_img: {
          select: {
            url: true
          }
        },
        size: {
          select: {
            name: true,
            value: true
          }
        },
        connectorSpecifications: {
          where: {
            dynamicspecificationId: {
              in: allSpecsNeeded.map((val) => val.id)
            }
          },
          include: {
            dynamicspecification: {
              select: {
                name: true,
                unit: true,
                slug: true
              }
            }
          }
        }
      }
    });

    let allSpecsCombined: Record<string, ChildSpecificationProp[]> = {}
    neededSpec.forEach((specParent) => {
      const matchingSpecs: ChildSpecificationProp[] = []
      
      if(specParent === 'type'){
        products.forEach((prod) => {
          prod.allCat.map((subprod) => {
            if(subprod.type === 'Sub Sub Category'){
              const found = allTypes.find((val) => val.slug === subprod.slug)
              found && matchingSpecs.push({
                childname: "Type",
                value: subprod.name,
                notes: '',
                slug: 'type',
                unit: ''
              })
            }
          })
        })
      }
      else if(specParent === 'series'){
        products.forEach((prod) => {
          prod.allCat.map((subprod) => {
            if(subprod.type === 'Sub Category'){
              const found = allBrand.find((val) => val.slug === subprod.slug)
              found && matchingSpecs.push({
                childname: "Series",
                value: subprod.name,
                notes: '',
                slug: 'series',
                unit: ''
              })
            }
          })
        })
      }
      else{
        products.forEach((prod) => {
          prod.connectorSpecifications.forEach((spec) => {
            if (spec.dynamicspecification.slug === specParent) {
              matchingSpecs.push({
                childname: spec.dynamicspecification.name,
                value: spec.value,
                notes: spec.notes,
                slug: spec.dynamicspecification.slug,
                unit: spec.dynamicspecification.unit
              })
            }
          })
        })
      }

      allSpecsCombined[specParent] = matchingSpecs
    })
    
    return NextResponse.json({
      products,
      allSpecsCombined
    });
  } catch (error) {
    console.log('[PRODUCT_BY_SUB_CATEGORY_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};