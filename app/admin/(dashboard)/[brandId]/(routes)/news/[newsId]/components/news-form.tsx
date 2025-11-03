"use client"

import * as z from "zod"
import axios from "axios"
import { useCallback, useEffect, useState } from "react"
import { zodResolver } from "@hookform/resolvers/zod"
import { useForm } from "react-hook-form"
import { toast } from "react-hot-toast"
import { News, News_Image } from "@prisma/client"
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
import { Separator } from "@/components/ui/separator"
import { Heading } from "@/app/admin/components/ui/heading"
import Image from "next/image"
import { uploadNewsImage } from "@/app/admin/upload-news-image"
import { Textarea } from "@/app/admin/components/ui/textarea"
import { Label } from "@/app/admin/components/ui/label"
import { Popover, PopoverContent, PopoverTrigger } from "@/app/admin/components/ui/popover"
import { Bold, CalendarIcon, Heading1, Heading4, Heading5, Heading6, Italic, List, ListOrdered, Strikethrough, Link as LinkLucide, Unlink as UnlinkLucide, Redo, Undo, UnderlineIcon, ImageIcon, YoutubeIcon, TableIcon, ArrowDown, ArrowUp, ArrowLeft, ArrowRight, GripVertical, Trash2, GripHorizontal, Plus, Trash } from "lucide-react"
import { format } from "date-fns"
import { Toggle } from "@/app/admin/components/ui/toggle"
import { Heading2 } from "lucide-react"
import { Heading3 } from "lucide-react"
import { EditorContent, useEditor } from "@tiptap/react"
import StarterKit from "@tiptap/starter-kit"
import HeadingTiptap from '@tiptap/extension-heading';
import ImageTiptap from '@tiptap/extension-image';
import LinkTiptap from '@tiptap/extension-link'
import BulletList from '@tiptap/extension-bullet-list'
import OrderedList from '@tiptap/extension-ordered-list'
import Placeholder from "@tiptap/extension-placeholder"
import Youtube from "@tiptap/extension-youtube"
import { Table } from "@tiptap/extension-table"
import TableRow from "@tiptap/extension-table-row"
import TableCell from "@tiptap/extension-table-cell"
import TableHeader from "@tiptap/extension-table-header"
import Underline from "@tiptap/extension-underline"
import './styles.scss'
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuSeparator, DropdownMenuTrigger } from "@/app/admin/components/ui/dropdown-menu"
import { cn } from "@/lib/utils"
import { Calendar } from "@/components/ui/calendar"


const formSchema = z.object({
  title: z.string().min(1),
  description: z.string().optional(),
  link_url: z.string().optional(),
  link_placeholder: z.string().optional(),
  news_img: z.object({ url: z.string() }).array(),
  news_date: z.date().optional(),
});

type NewsFormValues = z.infer<typeof formSchema>

interface NewsFormProps {
  initialData: News & {
    news_img: News_Image[]
  } | null;
};

export const NewsForm: React.FC<NewsFormProps> = ({
  initialData
}) => {
  const params = useParams();
  const router = useRouter();

  const [date, setDate] = useState<Date | undefined>(new Date())
 
  const [newsImage, setNewsImage] = useState<News_Image>()
  const [loading, setLoading] = useState(false);
  const [selectedFile, setSelectedFile] = useState<File>();
  const [linkUrl, setLinkUrl] = useState("")
  const [imageUrl, setImageUrl] = useState("")
  const [youtubeUrl, setYoutubeUrl] = useState("")
  const [tableSize, setTableSize] = useState({ rows: 3, cols: 3 })

  const title = initialData ? 'Edit News' : 'Add News';
  const description_title = `Add or Change This News`;
  const toastMessage = initialData ? 'News updated.' : 'News added.';
  const action = initialData ? 'Save changes' : 'Create';

  const defaultValues = initialData ? {
    ...initialData,
  } : {
    title: '',
    description: '',
    link_url: '',
    link_placeholder: '',
    news_img: [],
    news_date: new Date(),
  }

  useEffect(() => {
  const fetchData = async () => {
    if (initialData && initialData.news_img.length>0) {
      setNewsImage(initialData.news_img[0]);
    }
    else{
      let temp: News_Image = {
        id: Math.random().toString(),
        //@ts-ignore
        productId: params.newsId,
        url: '',
        createdAt: new Date(),
        updatedAt: new Date()
      }
      setNewsImage(temp)
    }
    if(initialData && initialData.event_date) {
      setDate(initialData.event_date)
    }
    else{
      setDate(new Date())
    }
  };
  
  fetchData().catch((error) => {
    console.error("Error fetching news: ", error);
  });
  }, [params.newsId, initialData, initialData?.news_img]);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    setSelectedFile(file);
  };

  const deleteImage = async () => {
    let temp: News_Image = {
      id: '',
      //@ts-ignore
      productId: params.newsId,
      url: '',
      createdAt: new Date(),
      updatedAt: new Date()
    }
    setNewsImage(temp)
  };

  async function handleImageUpload (file: File): Promise<News_Image> {
    if (file) {
      let updatednewsImage = newsImage;
      try {
        const formData = new FormData();
        formData.append('image', file);

        const url = await uploadNewsImage(formData);
        updatednewsImage!.url = url
        return updatednewsImage!;
        } catch (error) {
        console.error("Error uploading news image:", error);
        let temp: News_Image = {
          id: Math.random().toString(),
          //@ts-ignore
          productId: params.newsId,
          url: '',
          createdAt: new Date(),
          updatedAt: new Date()
        }
        return temp;
      }
    }
    let temp: News_Image = {
      id: Math.random().toString(),
      //@ts-ignore
      productId: params.newsId,
      url: '',
      createdAt: new Date(),
      updatedAt: new Date()
    }
    return temp;
  };


  const form = useForm<NewsFormValues>({
    resolver: zodResolver(formSchema),
    defaultValues
  });

  const onSubmit = async (data: NewsFormValues) => {
    try {
      setLoading(true);

      if (selectedFile) {
        data.news_img[0] = await handleImageUpload(selectedFile);
      }
      else{
        data.news_img[0] = newsImage!
      }

      if(date){
      data.news_date = date
      }
      else{
        data.news_date = new Date()
      }

      if(editor && editor.getHTML()){
        data.description = editor.getHTML()
      }
      else{
        data.description = ''
      }

      const API=`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_UPDATE_ADD_NEWS}`;
      //@ts-ignore
      const API_EDITED = API.replace('{brandId}', params.brandId)
      //@ts-ignore
      const API_EDITED2 = API_EDITED.replace('{newsId}', params.newsId)
      const response = await axios.patch(API_EDITED2, data);
      if(response.data === 'expired_session'){
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
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/news`);
        router.refresh();
        toast.success(toastMessage);
      }
    } catch (error: any) {
      toast.error('Something went wrong.');
    } finally {
      setLoading(false);
    }
  };



    const editor = useEditor({
      immediatelyRender: false,
      extensions: [
        StarterKit,
        Underline,
        HeadingTiptap.configure({
          levels: [1, 2, 3, 4, 5, 6],
        }),
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
        ImageTiptap.configure({
          HTMLAttributes: {
            class: "max-w-full rounded-md my-4",
          },
        }),
        Youtube.configure({
          width: 640,
          height: 480,
          HTMLAttributes: {
            class: "my-4 rounded overflow-hidden",
          },
        }),
        Placeholder.configure({
          placeholder: "Write something...",
        }),
        Table.configure({
          resizable: true,
          HTMLAttributes: {
            class: "border-collapse table-auto w-full my-4",
          },
        }),
        TableRow,
        TableHeader,
        TableCell.configure({
          HTMLAttributes: {
            class: "border border-gray-300 p-2",
          },
        }),
      ],
      editorProps: {
        attributes: {
          class: "prose prose-sm sm:prose lg:prose-lg xl:prose-xl focus:outline-hidden min-h-[200px] max-w-none",
        },
      },
      content: initialData?.description ? initialData.description : '<p></p>',
    });
  
    const addLink = () => {
      if (linkUrl) {
        editor!.chain().focus().extendMarkRange("link").setLink({ href: linkUrl }).run()
        setLinkUrl("")
      } else {
        editor!.chain().focus().extendMarkRange("link").unsetLink().run()
      }
    }

    const addYoutubeVideo = () => {
      if (youtubeUrl) {
        editor!.chain().focus().setYoutubeVideo({ src: youtubeUrl.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${youtubeUrl}` : youtubeUrl }).run()
        setYoutubeUrl("")
      }
    }
  
    const insertTable = () => {
      editor!.chain().focus().insertTable({ rows: tableSize.rows, cols: tableSize.cols, withHeaderRow: true }).run()
    }
    
    const setLink = useCallback(() => {
      const previousUrl = editor!.getAttributes('link').href
      const url = window.prompt('URL', previousUrl)
  
      // cancelled
      if (url === null) {
        return
      }
  
      // empty
      if (url === '') {
        editor!.chain().focus().extendMarkRange('link').unsetLink()
          .run()
  
        return
      }
  
      // update link
      editor!.chain().focus().extendMarkRange('link').setLink({ href: url })
        .run()
    }, [editor])
  
  
    const addImage = useCallback((url: string) => {
      // const url = window.prompt('URL')
  
      if (url) {
        editor!.chain().focus().setImage({ src: url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${url}` : url }).run()
      }
    }, [editor])
  
  
    
     async function handleImageUploadContentNews (file: File): Promise<string> {
        if (file) {
          try {
            const formData = new FormData();
            formData.append('image', file);
    
            const url = await uploadNewsImage(formData);
            return url
            } catch (error) {
              return ''
          }
        }
        return '';
      };
  
  
      if (!editor) {
        return null
      }
  
  
    const handleFileChangeTiptap = async (e: React.ChangeEvent<HTMLInputElement>) => {
      if (e.target.files?.[0]) {
        let testUrl = await handleImageUploadContentNews(e.target.files?.[0]);
        addImage(testUrl)
      }
    };


 
    if (!editor) {
      return null
    }
  

  return (  
    <>
      <div className="flex items-center justify-between">
        <Heading title={title} description={description_title} />
      </div>
      <Separator />
      <Form {...form}>
        <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4 w-full">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {/* <div
              className="flex items-center justify-between rounded-md shadow-xs"
            > */}
              <div className="rounded-lg p-4 shadow-lg bg-white/50 gap-4">
                <div className="text-left font-bold pb-2">Cover Image</div>
                <div className="flex items-center space-x-4 justify-between">
                  {newsImage && newsImage.url !== '' && (
                    <Image alt={title} src={newsImage.url.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${newsImage.url}` : newsImage.url} width={200} height={200} className="w-52 h-fit" priority/>
                  )}
                  {newsImage && newsImage.url === '' && (
                    <Input
                      id={`file`}
                      type="file"
                      accept="image/*"
                      name="file"
                      onChange={(e) =>
                        e.target.files && handleFileChange(e) // Ensure your file upload function can handle image files
                      }
                      disabled={loading}
                      required
                      className="border border-gray-300 p-2 rounded-md bg-white"
                    />
                  )}
                {newsImage && newsImage.url !== '' && (
                  <div
                    className="bg-red-500 text-white py-1 px-3 rounded-md cursor-pointer hover:bg-red-600"
                    onClick={() => deleteImage()}
                  >
                    <Trash width={20} height={20} />
                  </div>
                )}
                </div>
              </div>
            
            
              <div className="rounded-lg p-4 shadow-lg bg-white/50 gap-4 items-center w-full">
                <div className="pb-2">
                  <FormField
                    control={form.control}
                    name="title"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel className="font-bold text-base pb-2">Title</FormLabel>
                        <FormControl>
                          <Input disabled={loading} placeholder="News Title" {...field} className="bg-white text-black"/>
                        </FormControl>
                        <FormMessage />
                      </FormItem>
                    )}
                  />
                </div>
                <Label className="block p-0 font-bold text-base pb-2">Publication Date</Label>
                <Popover>
                  <PopoverTrigger asChild className="flex">
                    <Button
                      variant={"outline"}
                    >
                    <CalendarIcon className="mr-2 h-4 w-4" />
                    {date ? format(date, "PPP") : <span>Pick a date</span>}
                    </Button>
                  </PopoverTrigger>
                  <PopoverContent className="w-auto p-0">
                    <Calendar
                      mode="single"
                      selected={date}
                      onSelect={setDate}
                    />
                  </PopoverContent>
                </Popover>
              </div>
            {/* </div> */}

            
          </div>
         


            <div className="rounded-lg p-4 shadow-lg gap-4 bg-white/50">
              <div className="font-bold mb-2">Content</div>
              {/* Toolbar */}
              <div className="flex gap-2 mb-4 flex-wrap text-black">
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
                  pressed={editor.isActive('underline')}
                  onClick={() => editor.chain().focus().toggleUnderline().run()}
                >
                  <UnderlineIcon className="w-4 h-4" />
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
                <Popover>
                  <PopoverTrigger asChild>
                    <Toggle
                      pressed={editor.isActive('link')}
                    >
                      <LinkLucide className="w-4 h-4" />
                    </Toggle>
                  </PopoverTrigger>
                  <PopoverContent className="w-80">
                    <div className="flex flex-col space-y-2">
                      <p className="text-sm text-muted-foreground">Add a link</p>
                      <div className="flex space-x-2">
                        <Input placeholder="https://example.com" value={linkUrl} onChange={(e) => setLinkUrl(e.target.value)} />
                        <Button onClick={addLink}>Add</Button>
                      </div>
                    </div>
                  </PopoverContent>
                </Popover>                
                <Toggle
                  pressed={!editor.isActive('link')}
                  onClick={() => editor.chain().focus().unsetLink().run()}
                >
                    <UnlinkLucide className="w-4 h-4" />
                </Toggle>

                <Popover>
                  <PopoverTrigger asChild>
                    <Button variant="ghost" size="icon" className="hover:bg-white">
                      <ImageIcon className="h-4 w-4" />
                    </Button>
                  </PopoverTrigger>
                  <PopoverContent className="w-80">
                    <div className="flex flex-col space-y-4">
                      <div>
                        <p className="text-sm font-medium mb-2">Upload from device</p>
                        <Input  
                          id={`file`}
                          type="file"
                          accept="image/*"
                          name="file"
                          onChange={(e) =>
                            e.target.files && handleFileChangeTiptap(e)
                          }
                          className="border border-gray-300 p-2 rounded-md"
                        />
                      </div>
                      {/* <div className="border-t pt-4">
                        <p className="text-sm font-medium mb-2">Or add from URL</p>
                        <div className="flex space-x-2">
                          <Input
                            placeholder="https://example.com/image.jpg"
                            value={imageUrl}
                            onChange={(e) => setImageUrl(e.target.value)}
                          />
                          <Button onClick={() => addImage} variant={'secondary'}>Add</Button>
                        </div>
                      </div> */}
                    </div>
                  </PopoverContent>
                </Popover>

                <Popover>
                  <PopoverTrigger asChild>
                    <Button variant="ghost" size="icon" className="hover:bg-white">
                      <YoutubeIcon className="h-4 w-4" />
                    </Button>
                  </PopoverTrigger>
                  <PopoverContent className="w-80">
                    <div className="flex flex-col space-y-2">
                      <p className="text-sm text-muted-foreground">Add a YouTube video</p>
                      <div className="flex space-x-2">
                        <Input
                          placeholder="https://youtube.com/watch?v=dQw4w9WgXcQ"
                          value={youtubeUrl}
                          onChange={(e) => setYoutubeUrl(e.target.value)}
                        />
                        <Button onClick={addYoutubeVideo} variant={'secondary'}>Add</Button>
                      </div>
                    </div>
                  </PopoverContent>
                </Popover>

                {/* Table Controls */}
                {/* <DropdownMenu>
                  <DropdownMenuTrigger asChild>
                    <Button variant="ghost" size="icon" className={cn(editor.isActive("table") ? "bg-muted hover:bg-white" : "hover:bg-white")}>
                      <TableIcon className="h-4 w-4" />
                    </Button>
                  </DropdownMenuTrigger>
                  <DropdownMenuContent align="start" className="w-56">
                    <div className="p-2">
                      <p className="text-sm font-medium mb-2">Insert Table</p>
                      <div className="flex items-center space-x-2 mb-2">
                        <div className="flex items-center space-x-1">
                          <Button
                            variant="outline"
                            size="icon"
                            className="h-6 w-6"
                            onClick={() => setTableSize({ ...tableSize, rows: Math.max(2, tableSize.rows - 1) })}
                          >
                            <ArrowDown className="h-3 w-3" />
                          </Button>
                          <span className="text-sm w-6 text-center">{tableSize.rows}</span>
                          <Button
                            variant="outline"
                            size="icon"
                            className="h-6 w-6"
                            onClick={() => setTableSize({ ...tableSize, rows: Math.min(10, tableSize.rows + 1) })}
                          >
                            <ArrowUp className="h-3 w-3" />
                          </Button>
                        </div>
                        <span className="text-sm">×</span>
                        <div className="flex items-center space-x-1">
                          <Button
                            variant="outline"
                            size="icon"
                            className="h-6 w-6"
                            onClick={() => setTableSize({ ...tableSize, cols: Math.max(2, tableSize.cols - 1) })}
                          >
                            <ArrowLeft className="h-3 w-3" />
                          </Button>
                          <span className="text-sm w-6 text-center">{tableSize.cols}</span>
                          <Button
                            variant="outline"
                            size="icon"
                            className="h-6 w-6"
                            onClick={() => setTableSize({ ...tableSize, cols: Math.min(10, tableSize.cols + 1) })}
                          >
                            <ArrowRight className="h-3 w-3" />
                          </Button>
                        </div>
                      </div>
                      <Button className="w-full" onClick={insertTable} variant={'secondary'}>
                        Insert Table
                      </Button>
                    </div>

                    <DropdownMenuSeparator />

                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().addColumnBefore().run()}
                      disabled={!editor.can().addColumnBefore()}
                    >
                      <GripVertical className="h-4 w-4 mr-2" />
                      Add Column Before
                    </DropdownMenuItem>
                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().addColumnAfter().run()}
                      disabled={!editor.can().addColumnAfter()}
                    >
                      <GripVertical className="h-4 w-4 mr-2" />
                      Add Column After
                    </DropdownMenuItem>
                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().deleteColumn().run()}
                      disabled={!editor.can().deleteColumn()}
                    >
                      <Trash2 className="h-4 w-4 mr-2" />
                      Delete Column
                    </DropdownMenuItem>

                    <DropdownMenuSeparator />

                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().addRowBefore().run()}
                      disabled={!editor.can().addRowBefore()}
                    >
                      <GripHorizontal className="h-4 w-4 mr-2" />
                      Add Row Before
                    </DropdownMenuItem>
                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().addRowAfter().run()}
                      disabled={!editor.can().addRowAfter()}
                    >
                      <GripHorizontal className="h-4 w-4 mr-2" />
                      Add Row After
                    </DropdownMenuItem>
                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().deleteRow().run()}
                      disabled={!editor.can().deleteRow()}
                    >
                      <Trash2 className="h-4 w-4 mr-2" />
                      Delete Row
                    </DropdownMenuItem>

                    <DropdownMenuSeparator />

                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().deleteTable().run()}
                      disabled={!editor.can().deleteTable()}
                    >
                      <Trash2 className="h-4 w-4 mr-2" />
                      Delete Table
                    </DropdownMenuItem>
                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().mergeCells().run()}
                      disabled={!editor.can().mergeCells()}
                    >
                      <Plus className="h-4 w-4 mr-2" />
                      Merge Cells
                    </DropdownMenuItem>
                    <DropdownMenuItem
                      onClick={() => editor.chain().focus().splitCell().run()}
                      disabled={!editor.can().splitCell()}
                    >
                      <ArrowDown className="h-4 w-4 mr-2" />
                      Split Cell
                    </DropdownMenuItem>
                  </DropdownMenuContent>
                </DropdownMenu> */}

                <div className="ml-auto flex text-black gap-2">
                  <div
                    onClick={() => editor.chain().focus().undo().run()}
                    // disabled={!editor.can().undo()}
                    className={`p-4 ${!editor.can().undo() ? 'disabled' : 'hover:bg-secondary hover:cursor-pointer rounded-md duration-300 ease-in-out'}`}
                  >
                    <Undo className="h-4 w-4" />
                  </div>
                  <div
                    onClick={() => editor.chain().focus().redo().run()}
                    // disabled={!editor.can().redo()}
                    className={`p-4 ${!editor.can().redo() ? 'disabled' : 'hover:bg-secondary hover:cursor-pointer rounded-md duration-300 ease-in-out'}`}
                  >
                    <Redo className="h-4 w-4" />
                  </div>
                </div>
              </div>
              <EditorContent editor={editor} className="border rounded-md text-black p-4"/>
            </div>



          <Button disabled={loading} className="ml-auto" type="submit" variant={'secondary'}>
            {action}
          </Button>
        </form>
      </Form>
    </>
  );
};

