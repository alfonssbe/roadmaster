import { MetadataRoute } from "next";
import "dotenv/config";
import { writeFile } from "fs/promises";
import path from "path";
import { redirect } from "next/navigation";
import { AllProductsJsonType } from "./app/(roadmaster)/types";

// Fetch your dynamic URLs (from a database, API, or local data)
async function getProductsDynamicUrls() {
  const response = await fetch(`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_PRODUCTS_JSON}`);
  if (!response.ok) {
        redirect('/');
      // throw new Error(`Failed to fetch all products`);
    }
  const data : AllProductsJsonType[] = await response.json();
  return data.map((product) => ({
    url: `${process.env.NEXT_PUBLIC_ROOT_URL}/products/${product.slug}`,
    lastModified: new Date().toISOString(),
  }));
}

// Fetch your dynamic URLs (from a database, API, or local data)
async function getNewsDynamicUrls() {
    const API_EDITED = process.env.NEXT_PUBLIC_FETCH_ALL_NEWS!.replace('{totalNews}', "all")

    const res = await fetch(`${process.env.NEXT_PUBLIC_ROOT_URL}/${API_EDITED}`);
    const news = await res.json();
    return news.map((onenews: { slug: string }) => ({
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/news/${onenews.slug}`,
      lastModified: new Date().toISOString(),
    }));
  }

// Generate the sitemap dynamically
export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const productsDynamicUrls = await getProductsDynamicUrls();
  const newsDynamicUrls = await getNewsDynamicUrls();

  // Static URLs
  const staticUrls = [
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/about-us`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/catalog`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/contact`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/distributors`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/news`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/legacy`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/legacy/subwoofer`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/legacy/coaxial`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/legacy/tweeter`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/prestige`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/prestige/subwoofer`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/prestige/woofer`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/prestige/full-range`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/prestige/tweeter`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/prestige/coaxial`,
      lastModified: new Date().toISOString()
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/energy`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/energy/subwoofer`,
      lastModified: new Date().toISOString()
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/sparta`,
      lastModified: new Date().toISOString(),
    },
    {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/drivers/sparta/subwoofer`,
      lastModified: new Date().toISOString(),
    },
  ];

  return [...staticUrls, ...productsDynamicUrls, ...newsDynamicUrls];
}



sitemap()
  .then(async (data) => {

    // Convert the sitemap array to XML format
    const xmlContent = `
      <?xml version="1.0" encoding="UTF-8"?>
      <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
        ${data.map((url) => 
          `          <url>
            <loc>${url.url}</loc>
            <lastmod>${url.lastModified}</lastmod>
          </url>`
          )
          .join("\n")}
      </urlset>
    `.trim();

    // Define the path where to save the sitemap
    const filePath = path.join(process.cwd(), "public", "sitemap.xml");

    // Write to sitemap.xml file
    await writeFile(filePath, xmlContent, "utf8");
    console.log(`Sitemap saved to ${filePath}`);
  })
  .catch(console.error);