"use client"

import { Play } from 'lucide-react';
import Image from 'next/image';
import Link from 'next/link';
import { useState } from 'react';

const Youtube: React.FC = () => {
  const videoData = [
    { id: '0tSGZBU71gc', title: 'COMING SOON LEGACY LIMITED EDITION BY SINAR BAJA ELECTRIC' },
    { id: 'MdXTBWAba6I', title: 'Tur Pabrik SBE' },
    { id: 'xbs1qcUuAZc', title: 'ACR Rhyme Desibel Lumajang' },
    { id: 'oxL7PB9yZ70', title: 'ACR Rhyme Desibel Ngawi' },
    { id: 'D8z5V0Y4kIs', title: 'Toys Paradise Rhyme' },
    { id: 'M8QOSdspAqs', title: 'Showroom Lokal SBE Surabaya' },
    // { id: 'KIV-nLkEeKE', title: 'ACR Rhyme SMEX' },
  ];

  const [loadedVideos, setLoadedVideos] = useState<{ [key: string]: boolean }>({});

  const loadVideo = (id: string) => {
    setLoadedVideos((prev) => ({ ...prev, [id]: true }));
  };

  return (
    <div className="bg-slate-100 -z-10">
      <div className="relative w-full container mx-auto xl:px-36 lg:px-20 px-10 pb-4 pt-4 h-fit">
        <div className="w-full justify-center flex">
          <Link href="https://youtube.com/@acrspeaker-rhymeproaudio?si=jABUOuZOZV6axnPt" target="_blank">
            <div className="sm:flex block items-center hover:bg-slate-200 p-4 rounded-lg w-fit">
              <div className="sm:mr-4 flex justify-center sm:pb-0 pb-2">
                <Image src="/images/roadmaster/acryoutubeprofile.jpg" alt="ACR Rhyme Youtube" className="rounded-full" width={100} height={100} />
              </div>
              <div>
                <h2 className="text-2xl font-bold text-black pb-2 text-center">YOUTUBE CHANNEL</h2>
                <div className="text-xl text-black text-center">ACR Speaker - Rhyme Pro Audio</div>
              </div>
            </div>
          </Link>
        </div>

        <div className="grid md:grid-cols-3 sm:grid-cols-2 grid-cols-1 items-center pt-8">
          {videoData.map((video, index) => (
            // <div key={video.id} className={`p-1 ${index >= 3 ? 'sm:block hidden' : ''} group`}>
            //   {!loadedVideos[video.id] ? (
            //     <div
            //       className="w-full lg:h-60 h-40 rounded-lg bg-gray-200 flex items-center justify-center cursor-pointer relative"
            //       onClick={() => loadVideo(video.id)}
            //     >
            //       <h3 className='sr-only'>{video.title}</h3>
            //       <Image
            //         src={`https://img.youtube.com/vi/${video.id}/hqdefault.jpg`}
            //         alt={video.title}
            //         layout="fill"
            //         objectFit="cover"
            //         className="rounded-lg"
            //       />
            //       <div className="absolute inset-0 bg-black bg-opacity-40 flex items-center justify-center rounded-lg">
            //         <Play width={30} height={30} className="text-foreground group-hover:text-white duration-200 ease-in-out" />
            //       </div>
            //     </div>
            //   ) : (
            //     <iframe
            //       className="w-full lg:h-60 h-40 rounded-lg"
            //       src={`https://www.youtube.com/embed/${video.id}?autoplay=1`}
            //       title={video.title}
            //       loading="lazy"
            //       allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            //       allowFullScreen
            //     />
            //   )}
            // </div>


            <Link
                key={video.id}
                href={`https://www.youtube.com/watch?v=${video.id}`}
                target="_blank"
                rel="noopener noreferrer"
                className={`p-1 block ${index >= 3 ? 'sm:block hidden' : ''} group`}
              >
                <div className="w-full lg:h-60 h-40 rounded-lg relative overflow-hidden">
                  <Image
                    src={`https://img.youtube.com/vi/${video.id}/hqdefault.jpg`}
                    alt={video.title}
                    fill
                    className="object-cover rounded-lg"
                  />
                  <div className="absolute inset-0 bg-secondary-foreground/40 flex items-center justify-center rounded-lg">
                    <Play width={30} height={30} className="text-secondary group-hover:text-white duration-200 ease-in-out" />
                  </div>
                </div>
                {/* <div className="text-sm text-center font-medium pt-2 text-black">
                  {video.title}
                </div> */}
              </Link>
          ))}
        </div>
      </div>
    </div>
  );
};

export default Youtube;






// "use client"

// import { Play } from 'lucide-react'
// import Image from 'next/image'
// import Link from 'next/link'
// import { useEffect, useState } from 'react'

// type VideoItem = {
//   id: string
//   title: string
// }

// const Youtube: React.FC = () => {
//   const [videoData, setVideoData] = useState<VideoItem[]>([])
//   const [loading, setLoading] = useState(true)

//   useEffect(() => {
//     const fetchVideos = async () => {
//       try {
//         const res = await fetch('/api/youtube')
//         const data = await res.json()
//         setVideoData(data)
//       } catch (error) {
//         console.error('Failed to fetch YouTube videos', error)
//       } finally {
//         setLoading(false)
//       }
//     }

//     fetchVideos()
//   }, [])

//   return (
//     <div className="bg-slate-100 -z-10">
//       <div className="relative w-full container mx-auto xl:px-24 lg:px-16 px-10 pb-4 pt-4 h-fit">
//         <div className="w-full justify-center flex">
//           <Link href="https://youtube.com/@acrspeaker-rhymeproaudio?si=jABUOuZOZV6axnPt" target="_blank">
//             <div className="sm:flex block items-center hover:bg-slate-200 p-4 rounded-lg w-fit">
//               <div className="sm:mr-4 flex justify-center sm:pb-0 pb-2">
//                 <Image
//                   src="/images/roadmaster/acryoutubeprofile.jpg"
//                   alt="ACR Rhyme Youtube Channel"
//                   className="rounded-full"
//                   width={100}
//                   height={100}
//                 />
//               </div>
//               <div>
//                 <h2 className="text-2xl font-bold text-black pb-2 text-center">YOUTUBE CHANNEL</h2>
//                 <div className="text-xl text-black text-center">ACR Speaker - Rhyme Pro Audio</div>
//               </div>
//             </div>
//           </Link>
//         </div>


       

//         <div className="grid md:grid-cols-3 sm:grid-cols-2 grid-cols-1 items-center pt-8">
//           {loading && 
//           Array.from({ length: 6 }).map((_, i) => (
//             <div key={i} className={`p-1 ${i >= 3 ? 'sm:block hidden' : ''}`}>
//               <div className="w-full lg:h-60 h-40 rounded-lg bg-secondary-foreground/20 animate-pulse"></div>
//               {/* <div className="h-4 mt-2 bg-gray-300 rounded animate-pulse w-3/4 mx-auto"></div> */}
//             </div>
//           ))}

//           {!loading &&
//             videoData.map((video, index) => (
//               <Link
//                 key={video.id}
//                 href={`https://www.youtube.com/watch?v=${video.id}`}
//                 target="_blank"
//                 rel="noopener noreferrer"
//                 className={`p-1 block ${index >= 3 ? 'sm:block hidden' : ''} group`}
//               >
//                 <div className="w-full lg:h-60 h-40 rounded-lg relative overflow-hidden">
//                   <Image
//                     src={`https://img.youtube.com/vi/${video.id}/hqdefault.jpg`}
//                     alt={video.title}
//                     fill
//                     className="object-cover rounded-lg"
//                   />
//                   <div className="absolute inset-0 bg-black/40 flex items-center justify-center rounded-lg">
//                     <Play width={30} height={30} className="text-foreground group-hover:text-white duration-200 ease-in-out" />
//                   </div>
//                 </div>
//                 {/* <div className="text-sm text-center font-medium pt-2 text-black">
//                   {video.title}
//                 </div> */}
//               </Link>
//             ))}
//         </div>
//       </div>
//     </div>
//   )
// }

// export default Youtube
