#import "../utils/style.typ": *

#let cover(
  title: "",
  author: "",
  student-id: "",
  major: "",
  school: "",
  supervisor: "",
  date: ""
) = {
  align(center)[
    #v(62pt)

    #let logo = "../assets/whu.png"
    #image(logo, width: 33%, height: 10%, fit: "contain")

    #text(
      size: 字号.二号,
      font: 字体.宋体,
      weight: "bold"
    )[本科毕业论文（设计）]

    #v(59pt)

    #text(
      size: 字号.一号,
      font: 字体.楷体,
      title
    )

    #v(86pt)

    #let info_block(content) = {
      text(
        font: 字体.宋体,
        size: 字号.四号,
        content
      )
    }
    #grid(
      columns: (70pt, 150pt),
      rows: (32pt, 32pt),
      info_block("姓　　名："),
      info_block(author),
      info_block("学　　号："),
      info_block(student-id),
      info_block("专　　业："),
      info_block(major),
      info_block("学　　院："),
      info_block(school),
      info_block("指导教师："),
      info_block(supervisor)
    )

    #v(91pt)

    #text(
      font: 字体.宋体,
      size: 字号.四号,
      spacing: 150%,
      date
    )
  ]
}
