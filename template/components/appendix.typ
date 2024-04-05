#import "../utils/style.typ": *

#let appendix(
  title: "附录",
  display_title: "附　　录",
  outlined: true,
  body,
) = {
  show <_appendix_>: {
    align(center)[
      #v(5pt)
      #text(
        font: 字体.黑体,
        size: 字号.小二,
        weight: "regular"
      )[#display_title]
    ]
  }

  pagebreak(weak: true)
  [
    #heading(level: 1, numbering: none, outlined: outlined, title) <_appendix_>

    #body
  ]
}