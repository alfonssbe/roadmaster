// "use client"

// import * as React from "react"
// import * as SliderPrimitive from "@radix-ui/react-slider"

// import { cn } from "@/lib/utils"

// interface SliderProps extends React.ComponentPropsWithoutRef<typeof SliderPrimitive.Root> {
//   onValueChange?: (value: number[]) => void;
//   opensheetvalmin?: number;
//   opensheetvalmax?: number;
//   resetclicked?: string;
//   realdatesvalues?: string[];
//   unit?: string;
// }

// const SliderNews = React.forwardRef<React.ElementRef<typeof SliderPrimitive.Root>, SliderProps>(
//   ({ className, onValueChange, opensheetvalmin = 0, opensheetvalmax = 0, resetclicked, realdatesvalues= [], unit, ...props }, ref) => {
//   // const [sliderValue, setSliderValue] = React.useState<number[]>(
//   //   [props.min! + (opensheetvalmin? opensheetvalmin : 0), props.max! - (props.max! - (opensheetvalmax ? opensheetvalmax : props.max!))]
//   // );
//   const [sliderValue, setSliderValue] = React.useState<number[]>(
//     [props.min!, props.max!]
//   );
//   // // @ts-ignore
//   // const [minVal, setMinVal] = React.useState<string>(realdatesvalues[props.min + (opensheetvalmin? opensheetvalmin : 0)]);
//   // //@ts-ignore
//   // const [maxVal, setMaxVal] = React.useState<string>(realdatesvalues[props.max - (props.max! - (opensheetvalmax ? opensheetvalmax : props.max!))]);

//  // @ts-ignore
//  const [minVal, setMinVal] = React.useState<string>(realdatesvalues[props.min]);
//  //@ts-ignore
//  const [maxVal, setMaxVal] = React.useState<string>(realdatesvalues[props.max]);


//   const handleValueChange = (value: number[]) => {
//     setSliderValue(value);
//     setMinVal(realdatesvalues ? realdatesvalues[value[0]] : '');
//     setMaxVal(realdatesvalues ? realdatesvalues[value[1]] : '');

//     if (onValueChange) {
//       onValueChange(value); // Call the callback with the updated value
//     }
//   };
  
//   React.useEffect(() => {
//     if (resetclicked === "true") {
//       setSliderValue([0, props.value?.length! - 1])
//       setMinVal(realdatesvalues![0])
//       setMaxVal(realdatesvalues![props.value?.length! - 1])
//     }
//   }, [props.value, resetclicked, realdatesvalues]);

//   return (
//     <>
//       <SliderPrimitive.Root
//         ref={ref}
//         className={cn(
//           "relative flex w-full touch-none select-none items-center",
//           className
//         )}
//         {...props}
//         value={sliderValue}
//         onValueChange={handleValueChange}
//       >
//         <SliderPrimitive.Track className="relative h-1.5 w-full grow overflow-hidden rounded-full bg-slate-300">
//           <SliderPrimitive.Range className="absolute h-full bg-foreground" />
//         </SliderPrimitive.Track>
//         {sliderValue.map((_, index) => (
//           <React.Fragment key={index}>
//             <SliderPrimitive.Thumb className="block h-4 w-4 rounded-full first-letter:bg-background bg-text-primary ring-offset-background transition-colors disabled:pointer-events-none disabled:opacity-50 hover:shadow-lg hover:cursor-pointer" />
//           </React.Fragment>
//         ))}
//       </SliderPrimitive.Root>
//       <div className="w-full text-center text-sm text-black">{minVal} {unit} - {maxVal} {unit}</div>
//     </>
//   );
// });
// SliderNews.displayName = SliderPrimitive.Root.displayName;

// export { SliderNews };




"use client"

import * as React from "react"
import * as SliderPrimitive from "@radix-ui/react-slider"

import { cn } from "@/lib/utils"

interface SliderProps extends React.ComponentPropsWithoutRef<typeof SliderPrimitive.Root> {
  onValueChange?: (value: number[]) => void
  opensheetvalmin?: number
  opensheetvalmax?: number
  resetclicked?: string
  realdatesvalues?: string[]
  unit?: string
}

const SliderNews = React.forwardRef<React.ElementRef<typeof SliderPrimitive.Root>, SliderProps>(
  (
    {
      className,
      onValueChange,
      opensheetvalmin = 0,
      opensheetvalmax = 0,
      resetclicked,
      realdatesvalues = [],
      unit = "",
      ...props
    },
    ref,
  ) => {
    // The slider works with indices, not actual values - fully controlled
    const currentIndices =
      props.value && Array.isArray(props.value)
        ? props.value.length >= 2
          ? props.value
          : [props.value[0] || props.min || 0, props.max || 100]
        : [props.min || 0, props.max || 100]

    // Get display values based on current slider indices and realdatesvalues array
    const getDisplayValues = () => {
      if (realdatesvalues && Array.isArray(realdatesvalues) && realdatesvalues.length > 0) {
        return {
          minVal:
            realdatesvalues[currentIndices[0]] !== undefined
              ? realdatesvalues[currentIndices[0]]
              : currentIndices[0].toString(),
          maxVal:
            realdatesvalues[currentIndices[1]] !== undefined
              ? realdatesvalues[currentIndices[1]]
              : currentIndices[1].toString(),
        }
      }
      return {
        minVal: currentIndices[0].toString(),
        maxVal: currentIndices[1].toString(),
      }
    }

    const { minVal, maxVal } = getDisplayValues()

    // Handle reset by calling onValueChange with reset indices
    React.useEffect(() => {
      if (resetclicked === "true" && onValueChange) {
        const resetValue = [props.min || 0, props.max || realdatesvalues.length - 1 || 100]
        onValueChange(resetValue)
      }
    }, [resetclicked, props.min, props.max, onValueChange, realdatesvalues.length])

    return (
      <>
        <SliderPrimitive.Root
          ref={ref}
          className={cn("relative flex w-full touch-none select-none items-center", className)}
          {...props}
          value={currentIndices}
          onValueChange={onValueChange}
        >
          <SliderPrimitive.Track className="relative h-1.5 w-full grow overflow-hidden rounded-full bg-slate-300">
            <SliderPrimitive.Range className="absolute h-full bg-foreground" />
          </SliderPrimitive.Track>
          {currentIndices.map((_, index) => (
            <SliderPrimitive.Thumb
              key={index}
              className="block h-4 w-4 rounded-full first-letter:bg-background bg-text-primary ring-offset-background transition-colors disabled:pointer-events-none disabled:opacity-50 hover:shadow-lg hover:cursor-pointer"
            />
          ))}
        </SliderPrimitive.Root>
        <div className="w-full text-center text-sm text-black">
          {minVal} {unit} - {maxVal} {unit}
        </div>
      </>
    )
  },
)

SliderNews.displayName = SliderPrimitive.Root.displayName

export { SliderNews }
