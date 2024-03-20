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
  date: ""
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

    #let info_block(content) = {
      text(
        font: songti,
        size: 14pt,
        content
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


#let declaration(
  auther_signature_path: "",
  mentor_signature_path: ""
) = {

  let signature_block() = {
    let text_block(margin_top, content) = {
      text(
        font: songti,
        size: 12pt,
      )[
        #v(margin_top)
        #content
      ]
    }

    align(right)[
      #grid(
        columns: (60pt, 72pt, 84pt, 72pt),
        rows: (20pt),
        text_block(8pt, "作者签名："),
        image(auther_signature_path, fit: "contain"),
        text_block(8pt, "指导老师签名："),
        image(mentor_signature_path, fit: "contain"),
      )
      #grid(
        columns: (60pt, 228pt),
        text_block(0pt, "日　　期："),
        grid.cell(
          text_block(0pt, "　　　　　年　　月　　日"),
          align: left
        )
      )
    ]
  }


  set page(margin: (x: 90pt, y: 82pt))
  align(center)[
    #text(
      font: heiti,
      size: 18pt
    )[原创性声明]
  ]

  v(30pt)
  text(
    font: songti,
    size: 12pt
  )[
    #set par(leading: 1.25em, first-line-indent: 2em)
    本人郑重声明：所呈交的论文（设计），是本人在指导教师的指导下，严格按照学校和学院有关规定完成的。除文中已经标明引用的内容外，本论文（设计）不包含任何其他个人或集体已发表及撰写的研究成果。对本论文（设计）做出贡献的个人和集体，均已在文中以明确方式标明。本人承诺在论文（设计）工作过程中没有伪造数据等行为。若在本论文（设计）中有侵犯任何方面知识产权的行为，由本人承担相应的法律责任。
  ]

  v(38pt)
  signature_block()

  v(66pt)
  align(center)[
    #text(
      font: heiti,
      size: 18pt
    )[版权使用授权书]
  ]

  v(35pt)
  text(
    font: songti,
    size: 12pt
  )[
    #set par(leading: 1.25em, first-line-indent: 2em)
    本人完全了解武汉大学有权保留并向有关部门或机构送交本论文（设计）的复印件和电子版，允许本论文（设计）被查阅和借阅。本人授权武汉大学将本论文的全部或部分内容编入有关数据进行检索和传播，可以采用影印、缩印或扫描等复制手段保存和汇编本论文（设计）。
  ]

  v(38pt)
  signature_block()
}


#let abstract(
  abstract_zh: [],
  abstract_en: [],
  keywords_zh: (),
  keywords_en: ()
) = {

}

#let project(
  title: "",
  auther: "",
  id: "",
  major: "",
  school: "",
  mentor: "",
  date: "",

  auther_signature_path: "./assets/blank.png",
  mentor_signature_path: "./assets/blank.png",

  abstract_zh: [],
  abstract_en: [],
  keywords_zh: (),
  keywords_en: (),

  content
) = {
  cover(
    title: title,
    auther: auther,
    id: id,
    major: major,
    school: school,
    mentor: mentor,
    date: date
  )
  pagebreak()

  declaration(
    auther_signature_path: auther_signature_path,
    mentor_signature_path: mentor_signature_path
  )

  pagebreak()
}