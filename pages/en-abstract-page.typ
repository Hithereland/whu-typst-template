#import "abstract.typ": abstract
#import "../utilities/style.typ": *

#let en_abstract_page(
  keywords: (),
  content
) = {
  abstract(
    keywords: keywords,
    display_name: "ABSTRACT",
    title_name: "ABSTRACT",
    keyword_name: "Keywords: ",
    keyword_sep: "; ",
    title_font: 字体.宋体,
    content_font: 字体.宋体,
    content
  )
}