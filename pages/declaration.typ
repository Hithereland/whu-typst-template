#import "../utilities/style.typ": *

#let declaration(
  anonymous: false,
  author_signature_path: "",
  mentor_signature_path: "",
  date:"2000年1月1日"
) = {

  let signature_block() = {
    let text_block(margin_top, content) = {
      text(
        font: 字体.宋体,
        size: 字号.小四,
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
        if not anonymous {image(author_signature_path, fit: "contain")}
        else{
          text_block(8pt, "█████████")
        },
        
        text_block(8pt, "指导老师签名："),
        if not anonymous {image(mentor_signature_path, fit: "contain")}
        else{
          text_block(8pt, "█████████")
        }
      )
      #grid(
        columns: (60pt, 228pt),
        text_block(0pt, "日　　期："),
        if not anonymous {
        grid.cell(
          text_block(0pt, date),
          align: left
        )
        }
        else{
        grid.cell(
          text_block(0pt, "██████████年███月███日"),
          align: left
        )
        },

      )
    ]
  }


  align(center)[
    #text(
      font: 字体.黑体,
      size: 字号.小二
    )[原创性声明]
  ]

  v(30pt)
  text(
    font: 字体.宋体,
    size: 字号.小四
  )[
    #set par(leading: 1.25em, first-line-indent: 2em)
    本人郑重声明：所呈交的论文（设计），是本人在指导教师的指导下，严格按照学校和学院有关规定完成的。除文中已经标明引用的内容外，本论文（设计）不包含任何其他个人或集体已发表及撰写的研究成果。对本论文（设计）做出贡献的个人和集体，均已在文中以明确方式标明。本人承诺在论文（设计）工作过程中没有伪造数据等行为。若在本论文（设计）中有侵犯任何方面知识产权的行为，由本人承担相应的法律责任。
  ]

  v(38pt)
  signature_block()

  v(66pt)
  align(center)[
    #text(
      font: 字体.黑体,
      size: 字号.小二
    )[版权使用授权书]
  ]

  v(35pt)
  text(
    font: 字体.宋体,
    size: 字号.小四
  )[
    #set par(leading: 1.25em, first-line-indent: 2em)
    #if not anonymous [本人完全了解武汉大学有权保留并向有关部门或机构送交本论文（设计）的复印件和电子版，允许本论文（设计）被查阅和借阅。本人授权武汉大学将本论文的全部或部分内容编入有关数据进行检索和传播，可以采用影印、缩印或扫描等复制手段保存和汇编本论文（设计）。
    ] else[
    本人完全了解██████有权保留并向有关部门或机构送交本论文（设计）的复印件和电子版，允许本论文（设计）被查阅和借阅。本人授权██████将本论文的全部或部分内容编入有关数据进行检索和传播，可以采用影印、缩印或扫描等复制手段保存和汇编本论文（设计）。
    ]
    
  ]

  v(38pt)
  signature_block()
}
