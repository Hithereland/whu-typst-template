#import "../utilities/style.typ": *

#let abstract(
  keywords: (),
  display_name: "",
  title_name: "",
  keyword_name: "",
  keyword_sep: "",
  title_font: (),
  content_font: (),
  weight: "bold",
  content
) = {
  set heading(level: 1, numbering: none)
  show <_abstract_>: {
    align(center)[
      #v(5pt)
      #text(
        font: title_font,
        size: 字号.小二,
        weight: weight
      )[#display_name]
    ]
  }
  [= #title_name <_abstract_>]

  v(15pt)

  par(
    leading: 1.5em,
    first-line-indent: 2em
  )[
    #text(
      font: content_font,
      size: 字号.小四,
    )[#content]
  ]
  v(5pt)
  par(
    leading: 1.5em,
  )[
  #text(
    font: content_font,
    size: 字号.小四,
    weight: "bold"
  )[#keyword_name]
  #text(
    font: content_font,
    size: 字号.小四,
  )[#keywords.join([#keyword_sep])]
  ]
}