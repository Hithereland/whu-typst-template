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

  content
}
