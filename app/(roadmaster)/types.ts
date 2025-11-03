import { Prisma } from "@prisma/client";

export interface FeaturedProducts {
    id: string;
    name: string;
    slug: string;
    featuredImgUrl: string;
    featuredDesc: string;
    series: string;
}

export interface NewsType {
    id: string;
    title: string;
    slug: string;
    link_url: string;
    link_placeholder: string;
    description: string;
    news_img_url: string;
    event_date: Date;
    updatedAt: string;
}

export interface Size {
    value: number;
    label: string;
}

export interface Searchbox {
    value: string;
    label: string;
    slug: string;
    url: string;
    categoryDetails: string;
}

export interface AllCategory {
    id: string;
    name: string;
    slug: string;
}

export interface NavbarCategory {
    name: string;
    type: string;
}

export interface NavbarProducts {
    name: string;
    href: string;
    categories: NavbarCategory[]
    url: string;
}

export interface SingleProducts {
    coverImg: FilesProp;
    size: Size;
    images_Catalogues: FilesProp[];
    drawing: FilesProp[];
    graph: FilesProp[];
    impedance: FilesProp[];
    categories: AllCategory[];
    sub_categories: AllCategory[];
    sub_sub_categories: AllCategory[];
    datasheet: FilesProp[];
    specification: SpecificationProp[];
    id: string;
    name: string;
    desc: string;
    slug: string;
}

export interface MetadataSingleProducts {
    id: string;
    name: string;
    desc: string;
    slug: string;
    coverUrl: string;
    coverAlt: string;
    size: Size;
}

export interface activeSlider{
    parentName: string;
    slug: string;
    bottomVal: number;
    topVal: number;
    bottomRealVal: number;
    topRealVal: number;
    unit: string;
}

export interface activeCheckbox{
    parentName: string;
    slug: string;
    name: string;
    unit: string;
}

export interface categoriesHeader{
    name: string;
    description: string;
}

export interface SliderDataNews{
    name: string;
    slug: string;
    value: number[];
    realDate: string[];
    unit: string;
    max_index: number;
    min_index: number;
    minIndex: number // Index in the data array
    maxIndex: number // Index in the data array
}

export interface SliderData{
  slug: string
  name: string
  minIndex: number // Index in the data array
  maxIndex: number // Index in the data array
  min_index: number // Minimum possible index
  max_index: number // Maximum possible index
  unit: string
  value: number[] // Array of actual values
}

export interface CheckBoxData{
    name: string;
    slug: string;
    value: string[];
    unit: string;
}

export interface NavbarComponents{
    title: string,
    href: string,
    parent: string,
    url: string
}

export interface PriorityMenu{
    priorityId: string,
    productId: string,
    productName: string,
    priority: string,
    menuType: string //["Kits", "Drivers", "Sub Drivers", "Sub Sub Drivers"],
    categoryId: string,
    categoryName: string
}

export interface SpecificationProp {
  parentname: string
  subparentname: string
  child: ChildSpecificationProp[]
}

export interface ChildSpecificationProp {
  childname: string
  value: string
  slug: string
  notes: string
  unit: string
}

export type SingleProductsType = Prisma.ProductGetPayload<{
  include: {
    cover_img: true;
    size: true,
    images_catalogues: true,
    drawing_img: true,
    graph_img: true,
    impedance_img: true,
    allCat: true,
    multipleDatasheetProduct: true,
    connectorSpecifications: true
  };
}>;

export interface FilesProp{
    name: string
    url: string
    productId: string
}

export interface AllProductsJsonType {
  name: string
  id: string
  slug: string
  cover_img: {
    url: string
  }
};

export interface AllFilterProductsOnlyType {
  products: AllProductsJsonType
  size: {
    name: string
    value: string
  },
  specs: ChildSpecificationProp[]
}