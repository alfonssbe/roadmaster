const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_ALL_NEWS_GSP}`;

const getAllNewsGSP = async (): Promise<string[]> => {

  const response = await fetch(API, {cache: "no-store"});
  if (!response.ok) {
    // Instead of redirect, just return empty array
    return [];
    // Or throw new Error("Failed to fetch all products");
  }

  const data = await response.json();

  if (!data) {
    return [];
  }

  let finalSlug : string[] = []
  data.map((val: any) => {
    finalSlug.push(val.slug)
  })

  return finalSlug;
};

export default getAllNewsGSP;

