#import "@preview/i-figured:0.2.4": show-figure, show-equation, reset-counters
#import "../utils/style.typ": *
#import "../utils/circled.typ": convert-circled

#let doc(
  // documentclass 传入参数
  info: (:),
  // 其他参数
  fallback: false,  // 字体缺失时使用 fallback，不显示豆腐块
  lang: "zh",
  margin: (x: 90pt, y: 82pt),
  content
) = {
  set text(fallback: fallback, lang: lang)
  set page(margin: margin)
  set document(
    title: info.title,
    author: info.author,
  )

  show heading: reset-counters

  show figure: show-figure
  show math.equation: show-equation

  set footnote(
    numbering: (..nums) => nums
      .pos()
      .map(convert-circled)
      .join(".")
  )
  show footnote: set text(font: 字体.宋体)
  show footnote.entry: set text(font: 字体.宋体, size: 字号.五号)

  content
}
