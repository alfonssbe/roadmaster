"use client"

import * as z from "zod"
import axios, { AxiosResponse } from "axios"
import { useEffect, useState } from "react"
import { zodResolver } from "@hookform/resolvers/zod"
import { useForm } from "react-hook-form"
import { toast } from "react-hot-toast"
import { allcategory } from "@prisma/client"
import { useParams, useRouter } from "next/navigation"

import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/app/admin/components/ui/form"
import { Heading } from "@/app/admin/components/ui/heading"
import { Separator } from "@/components/ui/separator"
import { uploadImage } from "@/app/admin/upload-image"
import Image from "next/image"
import { Trash } from "lucide-react"

const formSchema = z.object({
  name: z.string().min(1),
  description: z.string().min(1),
  type: z.string().min(1),
  thumbnail_url: z.string().optional()
});

type CategoryFormValues = z.infer<typeof formSchema>

interface CategoryFormProps {
  initialData: allcategory | null;
};

export const CategoryForm: React.FC<CategoryFormProps> = ({
  initialData
}) => {
  const params = useParams();
  const router = useRouter();

  const [coverImgUrl, setCoverImgUrl] = useState<string>();
  const [coverImg, setCoverImg] = useState<File>();

  const [loading, setLoading] = useState(false);

  const title = initialData ? 'Edit category' : 'Create category';
  const description = initialData ? 'Edit a category.' : 'Add a new category';
  const toastMessage = initialData ? 'Category updated.' : 'Category created.';
  const action = initialData ? 'Save changes' : 'Create';

  const form = useForm<CategoryFormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: initialData || {
      name: '',
      description: '',
      type: 'Category',
      thumbnail_url: ''
    }
  });

  useEffect(() => {
    const fetchData = async () => {
      if (initialData && initialData.thumbnail_url) {
        setCoverImgUrl(initialData.thumbnail_url);
      }
      else{
        setCoverImgUrl('')
      }
    };
    
    fetchData().catch((error) => {
      console.error("Error fetching category: ", error);
    });
  }, [params.superiorId, initialData, initialData?.thumbnail_url]);

    
  //COVER IMAGE
  const handleImageChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    setCoverImg(file);
  };

  const deleteImage = async () => {
    setCoverImgUrl('')
  }

  async function handleCoverImageUpload(file: File): Promise<string> {
    if (file) {
      let updatedCoverImage = coverImgUrl ?? ''
      try {
        const formData = new FormData();
        formData.append('image', file);
  
        const url = await uploadImage(formData, 'others');
        updatedCoverImage = url;
        return updatedCoverImage;
      } catch (error) {
        console.error("Error uploading cover image:", error);
        return '';
      }
    }
    return '';
  }

  const onSubmit = async (data: CategoryFormValues) => {
    try {
      setLoading(true);

      if (coverImg) {
        data.thumbnail_url = await handleCoverImageUpload(coverImg)
      }
      else{
        data.thumbnail_url = coverImgUrl
      }

      let response: AxiosResponse;
      if (initialData) {
        const API=`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_UPDATE_GET_DELETE_ONE_CATEGORY}`;
        //@ts-ignore
        const API_EDITED = API.replace('{brandId}', params.brandId)
        //@ts-ignore
        const API_EDITED2 = API_EDITED.replace('{categoryId}', params.categoryId)
        response = await axios.patch(API_EDITED2 , data);
      } else {
        const API=`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_ADD_CATEGORY}`;
        //@ts-ignore
        const API_EDITED = API.replace('{brandId}', params.brandId)
        response = await axios.post(API_EDITED, data);
      }
      if(response.data === 'duplicate'){
        toast.error("Duplicate Category")
      }
      else if(response.data === 'expired_session'){
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/`);
        router.refresh();
        toast.error("Session expired, please login again");
      }
      else if(response.data === 'invalid_token'){
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/`);
        router.refresh();
        toast.error("API Token Invalid, please login again");
      }
      else if(response.data === 'unauthorized'){
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/`);
        router.refresh();
        toast.error("Unauthorized!");
      }
      else{
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/category`);
        router.refresh();
        toast.success(toastMessage);
      }
    } catch (error: any) {
      toast.error('Something went wrong.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <>
     <div className="flex items-center justify-between">
        <Heading title={title} description={description} />
      </div>
      <Separator />
      <Form {...form}>
        <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4 w-full">
          <div className="grid md:grid-cols-2 grid-cols-1 md:gap-8 gap-4 rounded-lg p-4 shadow-lg bg-white/50">
          <div className="rounded-lg p-4 bg-white/50">
            <div className="text-center pb-2">
              <div className="text-left font-bold">Cover Image</div>
            </div>
              <div className="flex space-x-4 justify-between items-center">
                  {coverImgUrl && (
                    <Image alt={'Cover Image'} src={coverImgUrl.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${coverImgUrl}` : coverImgUrl} width={200} height={200} className="w-52 h-fit" priority/>
                  )}
                  {!coverImgUrl && (
                  <Input
                    id={`file`}
                    type="file"
                    accept="image/*"
                    name="file"
                    onChange={(e) =>
                      e.target.files && handleImageChange(e) // Ensure your file upload function can handle image files
                    }
                    required
                    disabled={loading}
                    className="border border-gray-300 p-2 rounded-md"
                  />
                  )}
                  {coverImgUrl && coverImgUrl !== '' && (
                  <Button
                    variant={"destructive"}
                    onClick={() => deleteImage()}
                  >
                    <Trash width={20} height={20} />
                  </Button>
                )}
                </div>
          </div>
          
          <div className="flex flex-col w-full justify-center rounded-lg p-4 bg-white/50 gap-4">
              <FormField
                control={form.control}
                name="name"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel className="font-bold text-base"> Name</FormLabel>
                    <FormControl>
                      <Input disabled={loading} placeholder="Category name" {...field} className="bg-white text-black"/>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
              <FormField
                control={form.control}
                name="description"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel className="font-bold text-base">Description</FormLabel>
                    <FormControl>
                      <Input disabled={loading} placeholder="Category description" {...field} className="bg-white text-black"/>
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
            </div>
          </div>
          <Button disabled={loading} className="ml-auto" type="submit" variant={'default'}>
            {action}
          </Button>
        </form>
      </Form>
    </>
  );
};
