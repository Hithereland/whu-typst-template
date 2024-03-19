#let heiti = ("Times New Roman", "Heiti SC", "Heiti TC", "SimHei")
#let songti = ("Times New Roman", "Songti SC", "Songti TC", "SimSun")
#let zhongsong = ("Times New Roman","STZhongsong", "SimSun")
#let kaiti = ("Times New Roman", "STKAITI")

// font size is referenced from https://zhuanlan.zhihu.com/p/504550803

#let cover(
  title: "",
  auther: "",
  id: "",
  major: "",
  school: "",
  mentor: "",
  date: "",
  abstract_zh: [],
  abstract_en: [],
  keywords_zh: (),
  keywords_en: ()
) = {
  align(center)[
    #v(62pt)

    #let logo = "./assets/whu.png"
    #image(logo, width: 33%, height: 10%, fit: "contain")

    #text(
      size: 22pt,
      font: zhongsong,
      weight: "bold"
    )[本科毕业论文（设计）]

    #v(59pt)

    #text(
      size: 26pt,
      font: kaiti,
      title
    )

    #v(86pt)

    // use grid func to show basic info
    #let info_block(body) = {
      text(
        font: songti,
        size: 14pt,
        body
      )
    }
    #grid(
      columns: (70pt, 150pt),
      rows: (32pt, 32pt),
      info_block("姓　　名："),
      info_block(auther),
      info_block("学　　号："),
      info_block(id),
      info_block("专　　业："),
      info_block(major),
      info_block("学　　院："),
      info_block(school),
      info_block("指导教师："),
      info_block(mentor)
    )

    #v(91pt)

    #text(
      font: songti,
      size: 14pt,
      spacing: 150%,
      date
    )
  ]
}