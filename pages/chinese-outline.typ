#import "../utilities/style.typ": *

// inspired from https://github.com/lucifer1004/pkuthss-typst.git
#let chinese_outline(
  depth: 3, // 目录深度，武汉大学要求不超过三级
  title: "目　　录", // 目录标题
) = {
  align(center)[
    #text(
      font: 字体.黑体,
      size: 字号.小二
    )[#title]
  ]

  // 临时取消目录的首行缩进
    set par(
    first-line-indent: 0em,
    leading: 1.25em
  )

  set text(
    font: 字体.宋体,
    size: 字号.小四,
  )

  context {
    let loc = here()
    let elements = query(heading.where(outlined: true))
    for el in elements {
      // 武汉大学要求目录深度不超过三级
      if el.level > depth {
        continue
      }

      // 是否有 el 位于前面，前面的目录中用拉丁数字，后面的用阿拉伯数字
      let before_toc = query(heading.where(outlined: true).before(loc)).find((one) => {one.body == el.body}) != none
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
            " " //肉眼排版宽度
          }
          el.body
        } else if el.level == 2 {
          text(
            font: 字体.宋体,
            size: 字号.小四,
            (el.level - 1) * "　" +  chapt_num
          )
          " " //肉眼排版宽度
          el.body
        } else {
          text(
            font: 字体.宋体,
            size: 字号.小四,
            (el.level - 1) * "　 " +  chapt_num // 肉眼排版宽度
          )
          " "
          el.body
        }
      }]

      // 填充 ......
      box(width: 1fr, h(0.5em) + box(width: 1fr, repeat[.]) + h(0.5em))
      [#page_num]
      linebreak()
    }
  }
}