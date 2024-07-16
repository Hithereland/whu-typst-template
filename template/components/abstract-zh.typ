#import "abstract.typ": abstract
#import "../utils/style.typ": *

#let abstract-zh(
  keywords: (),
  content
) = {
  abstract(
    keywords: keywords,
    display_name: "摘　　要",
    title_name: "摘要",
    keyword_name: "关键词：",
    keyword_sep: "；",
    title_font: 字体.黑体,
    content_font: 字体.宋体,
    weight: "regular",
    content
  )
}
