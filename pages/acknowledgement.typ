#import "../utilities/style.typ": *

#let acknowledgement(
  anonymous: false,
  title: "致谢",
  display_title: "致　　谢",
  outlined: true,
  body,
) = {
  if (not anonymous) {
    show <_acknowledgement_>: {
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
      #heading(level: 1, numbering: none, outlined: outlined, title) <_acknowledgement_>

      #body
    ]
  }
}