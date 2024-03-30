#import "../utils/style.typ": *

#let outline-page(
  depth: 3,
  title: "目　　录"
) = {
  align(center)[
    #text(
      font: 字体.黑体,
      size: 字号.小二
    )[#title]
  ]

  set par(
    first-line-indent: 0em,
    leading: 1.25em
  )

  set text(
    font: 字体.宋体,
    size: 字号.四号,
  )

  locate(loc => {
    let elements = query(heading.where(outlined: true), loc)
    for el in elements {
      if el.level > depth {continue}

      let before_toc = query(heading.where(outlined: true).before(loc), loc).find((one) => {one.body == el.body}) != none
      let page_num = if before_toc {
        numbering("I", counter(page).at(el.location()).first())
      } else {
        counter(page).at(el.location()).first()
      }

      link(el.location())[#{
        // acknoledgement has no numbering
        let chapt_num = if el.numbering != none {
          numbering(el.numbering, ..counter(heading).at(el.location()))
        } else {none}

        if el.level == 1 {
          set text(weight: "bold")
          if chapt_num == none {} else {
            text(
              font: 字体.宋体,
              size: 字号.小四,
              (el.level - 1) * "　" +  chapt_num
            )
            " "
          }
          el.body
        } else {
          text(
            font: 字体.宋体,
            size: 字号.小四,
            (el.level - 1) * "　" +  chapt_num
          )
          " "
          el.body
        }
      }]

      // fill with ......
      box(width: 1fr, h(0.5em) + box(width: 1fr, repeat[.]) + h(0.5em))
      [#page_num]
      linebreak()
    }
  })
}
