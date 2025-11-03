import { redirect } from "next/navigation";
import { categoriesHeader } from "../types";

const API=`${process.env.NEXT_PUBLIC_ROOT_URL}/${process.env.NEXT_PUBLIC_FETCH_SUBCAT_NAME_BY_SLUG}`;

const getSubCatNameBySlug = async (slug: string): Promise<categoriesHeader> => {
    const API_EDITED = API.replace('{subCategorySlug}', slug)
    const response = await fetch(API_EDITED);
    if (!response.ok) {
      redirect("/")
    }
    const data = await response.json();

    // Optional: additional check for unexpected null/empty data
    if (!data) {
      redirect('/');
    }
    return data;
};

export default getSubCatNameBySlug;

