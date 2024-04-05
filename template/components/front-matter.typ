#import "../utils/style.typ": *

#let front-matter(
  content
) = {
  set page(
    footer: {
      set align(center)

      text(
        font: 字体.宋体,
        size: 字号.五号,
        counter(page).display("I")
      )
    }
  )
  counter(page).update(1)

  show par: set block(spacing: 1.5em)

  content
}
