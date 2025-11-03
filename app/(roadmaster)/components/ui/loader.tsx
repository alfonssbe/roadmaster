import Image from "next/image";
import styles from '@/app/(roadmaster)/css/styles.module.css'

export const Loader = () => {
  return <div className={styles.iconCSS} ><Image alt="Loader Roadmaster" src={'/images/roadmaster/Legacy-icon-only.svg'} priority
  fill
  style={{ objectFit: 'contain' }}/></div>
};
