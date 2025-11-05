"use client"

import * as z from "zod"
import axios, { AxiosResponse } from "axios"
import { useCallback, useEffect, useState } from "react"
import { zodResolver } from "@hookform/resolvers/zod"
import { useForm } from "react-hook-form"
import { toast } from "react-hot-toast"
import { Product } from "@prisma/client"
import { useParams, useRouter } from "next/navigation"

import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"
import {
  Form,
  FormControl,
  FormDescription,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/app/admin/components/ui/form"
import { Heading } from "@/app/admin/components/ui/heading"
import { Separator } from "@/components/ui/separator"
import { uploadImage } from "@/app/admin/upload-image"
import Image from "next/image"
import { Bold, Heading1, Heading2, Heading3, Heading4, Heading5, Heading6, Italic, List, ListOrdered, LucideLink, LucideUnlink, Strikethrough, Trash } from "lucide-react"


import { EditorContent, useEditor } from "@tiptap/react"
import StarterKit from "@tiptap/starter-kit"
import HeadingTiptap from '@tiptap/extension-heading';
import ImageTiptap from '@tiptap/extension-image';
import LinkTiptap from '@tiptap/extension-link'
import BulletList from '@tiptap/extension-bullet-list'
import OrderedList from '@tiptap/extension-ordered-list'
import Text from '@tiptap/extension-text'
import TextStyle from '@tiptap/extension-text-style'
import { Toggle } from "@/app/admin/components/ui/toggle"
import "./styles.scss";


const formSchema = z.object({
  name: z.string().min(1),
  description: z.string().min(0).optional(),
  cover_img: z.string().optional()
});

type ProductFormValues = z.infer<typeof formSchema>

interface ProductFormProps {
  initialData: Product | null;
};

export const ProductForm: React.FC<ProductFormProps> = ({
  initialData
}) => {
  const params = useParams();
  const router = useRouter();

  const [coverImgUrl, setCoverImgUrl] = useState<string>();
  const [coverImg, setCoverImg] = useState<File>();

  const [loading, setLoading] = useState(false);

  const title = initialData ? 'Edit Product' : 'Create Product';
  const description = initialData ? 'Edit a Product.' : 'Add a new Product';
  const toastMessage = initialData ? 'Product updated.' : 'Product created.';
  const action = initialData ? 'Save changes' : 'Create';

  const form = useForm<ProductFormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: initialData || {
      name: '',
      description: '',
      cover_img: ''
    }
  });

  useEffect(() => {
    const fetchData = async () => {
      if (initialData && initialData.cover_img) {
        setCoverImgUrl(initialData.cover_img);
      }
      else{
        setCoverImgUrl('')
      }
    };
    
    fetchData().catch((error) => {
      console.error("Error fetching product: ", error);
    });
  }, [params.superiorId, initialData, initialData?.cover_img]);

    
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
  
        const url = await uploadImage(formData, 'productcoverimage');
        updatedCoverImage = url;
        return updatedCoverImage;
      } catch (error) {
        console.error("Error uploading cover image:", error);
        return '';
      }
    }
    return '';
  }

const editor = useEditor({
    immediatelyRender: false,
    extensions: [
      StarterKit,
      HeadingTiptap.configure({
        levels: [1, 2, 3, 4, 5, 6],
      }),
      ImageTiptap,
      BulletList,
      OrderedList,
      LinkTiptap.configure({
        openOnClick: false,
        autolink: true,
        defaultProtocol: 'https',
        protocols: ['http', 'https'],
        isAllowedUri: (url: string, ctx:any) => {
          try {
            // construct URL
            const parsedUrl = url.includes(':') ? new URL(url) : new URL(`${ctx.defaultProtocol}://${url}`)

            // use default validation
            if (!ctx.defaultValidate(parsedUrl.href)) {
              return false
            }

            // disallowed protocols
            const disallowedProtocols = ['ftp', 'file', 'mailto']
            const protocol = parsedUrl.protocol.replace(':', '')

            if (disallowedProtocols.includes(protocol)) {
              return false
            }

            // only allow protocols specified in ctx.protocols
            const allowedProtocols = ctx.protocols.map((p: string | { scheme: string }) => (typeof p === 'string' ? p : p.scheme))

            if (!allowedProtocols.includes(protocol)) {
              return false
            }

            // disallowed domains
            const disallowedDomains = ['example-phishing.com', 'malicious-site.net']
            const domain = parsedUrl.hostname

            if (disallowedDomains.includes(domain)) {
              return false
            }

            // all checks have passed
            return true
          } catch (error) {
            return false
          }
        },
        shouldAutoLink: url => {
          try {
            // construct URL
            const parsedUrl = url.includes(':') ? new URL(url) : new URL(`https://${url}`)

            // only auto-link if the domain is not in the disallowed list
            const disallowedDomains = ['example-no-autolink.com', 'another-no-autolink.com']
            const domain = parsedUrl.hostname

            return !disallowedDomains.includes(domain)
          } catch (error) {
            return false
          }
        },

      }),
      Text,
      TextStyle,
    ],
    editorProps: {
      attributes: {
        class: 'prose prose-sm sm:prose-base lg:prose-lg xl:prose-2xl m-5 focus:outline-hidden',
      },
    },
    content: initialData?.description ? initialData.description : '<p></p>',
  });

  const onSubmit = async (data: ProductFormValues) => {
    try {
      setLoading(true);

      if (coverImg) {
        data.cover_img = await handleCoverImageUpload(coverImg)
      }
      else{
        data.cover_img = coverImgUrl
      }

      if (editor && editor.getHTML() && editor.getHTML() !== '<p></p>') {
        data.description = editor.getHTML();
      }
      else {
        data.description = '<p></p>'
      }

      let response: AxiosResponse;
      if (initialData) {
        const API=`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_UPDATE_PRODUCT}`;
        //@ts-ignore
        const API_EDITED = API.replace('{brandId}', params.brandId)
        //@ts-ignore
        const API_EDITED2 = API_EDITED.replace('{productId}', params.productId)
        response = await axios.patch(API_EDITED2, data);
      } else {
        const API=`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_ADD_PRODUCT}`;
        //@ts-ignore
        const API_EDITED = API.replace('{brandId}', params.brandId)
        response = await axios.post(API_EDITED, data);
      }

      if(response.data === 'duplicate'){
        toast.error("Duplicate product")
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
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/products`);
        router.refresh();
        toast.success(toastMessage);
      }
    } catch (error: any) {
      toast.error('Something went wrong.');
    } finally {
      setLoading(false);
    }
  };

  
  const setLink = useCallback(() => {
    if (!editor) return

    const previousUrl = editor.getAttributes('link').href
    const url = window.prompt('URL', previousUrl)

    if (url === null) return

    if (url === '') {
      editor.chain().focus().extendMarkRange('link').unsetLink().run()
      return
    }

    editor.chain().focus().extendMarkRange('link').setLink({ href: url }).run()
  }, [editor])

  if (!editor) return null

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
                      <Input disabled={loading} placeholder="Product name" {...field} className="bg-white text-black"/>
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
                    <FormLabel className="text-left font-bold text-base">Description (Indonesia)</FormLabel>
                    <FormDescription></FormDescription>
                    <FormControl>
                      {/* <Textarea disabled={loading} placeholder="Product description" {...field} /> */}
                      <div className="border-2 rounded-lg p-2">
                        <div className="flex gap-2 mb-4 flex-wrap">
                          <Toggle
                            pressed={editor.isActive('bold')}
                            onClick={() => editor.chain().focus().toggleBold().run()}
                          >
                            <Bold className="w-4 h-4" />
                          </Toggle>
                          <Toggle
                            pressed={editor.isActive('italic')}
                            onClick={() => editor.chain().focus().toggleItalic().run()}
                          >
                            <Italic className="w-4 h-4" />
                          </Toggle>
                          <Toggle
                            pressed={editor.isActive('strike')}
                            onClick={() => editor.chain().focus().toggleStrike().run()}
                          >
                            <Strikethrough className="w-4 h-4" />
                          </Toggle>
                          <Toggle
                            pressed={editor.isActive('bulletList')}
                            onClick={() => editor.chain().focus().toggleBulletList().run()}
                          >
                            <List className="w-4 h-4" />
                          </Toggle>
                          <Toggle
                            pressed={editor.isActive('orderedList')}
                            onClick={() => editor.chain().focus().toggleOrderedList().run()}
                          >
                            <ListOrdered className="w-4 h-4" />
                          </Toggle>
                          {[1, 2, 3, 4, 5, 6].map((level) => (
                            <Toggle
                              key={level}
                              pressed={editor.isActive('heading', { level })}
                              onClick={() => editor.chain().focus().toggleHeading({ level: level as 1 | 2 | 3 | 4 | 5 | 6 }).run()}
                            >
                              {level === 1 && <Heading1 className="w-4 h-4" />}
                              {level === 2 && <Heading2 className="w-4 h-4" />}
                              {level === 3 && <Heading3 className="w-4 h-4" />}
                              {level === 4 && <Heading4 className="w-4 h-4" />}
                              {level === 5 && <Heading5 className="w-4 h-4" />}
                              {level === 6 && <Heading6 className="w-4 h-4" />}
                            </Toggle>
                          ))}
                          
                          <Toggle
                            pressed={editor.isActive('link')}
                            onClick={setLink}
                          >
                              <LucideLink className="w-4 h-4" />
                          </Toggle>
                          <Toggle
                            pressed={!editor.isActive('link')}
                            onClick={() => editor.chain().focus().unsetLink().run()}
                          >
                              <LucideUnlink className="w-4 h-4" />
                          </Toggle>
                        </div>
                          
                          {/* <Input  
                            id={`file`}
                            type="file"
                            accept="image/*"
                            name="file"
                            onChange={(e) =>
                              e.target.files && handleFileChangeTiptap(e)
                            }
                            className="border border-gray-300 p-2 rounded-md"
                          /> */}

                        <EditorContent editor={editor} className="border p-4"/>
                        </div>
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
