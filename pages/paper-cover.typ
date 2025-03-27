#import "../utilities/style.typ": *

#let paper_cover(
  cover_logo_path: "../assets/whu.png",
  anonymous: false,
  title: "",
  author: "",
  student-id: "",
  major: "",
  school: "",
  supervisor: "",
  date: "二〇二×年× 月",
) = {
  align(center)[
    #v(62pt)

        // 匿名化处理需要去掉个人、机构信息
    #let logo = if not anonymous {
      cover_logo_path
    } else {
      "../assets/black.png"
    }

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
      info_block(if not anonymous { author } else { "██████████" }),
      info_block("学　　号："),
      info_block(if not anonymous { student-id } else { "██████████" }),
      info_block("专　　业："),
      info_block(if not anonymous { major } else { "██████████" }),
      info_block("学　　院："),
      info_block(if not anonymous { school } else { "██████████" }),
      info_block("指导教师："),
      info_block(if not anonymous { supervisor } else { "██████████" })
    )

    #place(
      bottom + center,
      float: true,
      text(
        font: 字体.宋体,
        size: 字号.四号,
        spacing: 150%,
        date
      )
    )

    #pagebreak(weak: true)
  ]
}
