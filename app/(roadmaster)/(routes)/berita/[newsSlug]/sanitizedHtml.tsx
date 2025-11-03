'use client';

import DOMPurify from 'isomorphic-dompurify';
import "./styles.scss";

export const SanitizedHtml = ({ html }: { html: string }) => {

  return (
    <div
      className="news-content tiptap text-base text-black pb-8 [&>iframe]:max-w-full"
      dangerouslySetInnerHTML={{
        __html: DOMPurify.sanitize(html, {
          ADD_TAGS: ['iframe'],
          ADD_ATTR: ['allowfullscreen', 'frameborder', 'scrolling', 'src', 'width', 'height', 'class'],
        }).replace(
          /<iframe([^>]*)><\/iframe>/g,
          `<div class="responsive-iframe-wrapper"><iframe$1></iframe></div>`
        ),
      }}
    />
  );
};
