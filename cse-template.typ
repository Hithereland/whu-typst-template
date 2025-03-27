#import "@preview/lovelace:0.2.0": *
// 使用伪粗体修复中文粗体不能正确显示的问题
#import "@preview/cuti:0.3.0": show-cn-fakebold

#import "fonts/font-def.typ": *
#import "pages/acknowledgement.typ": acknowledgement
#import "pages/chinese-outline.typ": chinese_outline
#import "pages/declaration.typ": declaration
#import "pages/zh-abstract-page.typ": zh_abstract_page
#import "pages/en-abstract-page.typ": en_abstract_page
#import "pages/references.typ": _set_references
#import "pages/paper-cover.typ": paper_cover
#import "pages/paper-pages.typ": *
#import "pages/front-matter.typ": front-matter
#import "pages/main-matter.typ" : main-matter
#import "pages/algorithm-table.typ": setup-algorithm-table

#import "utilities/three-line-table.typ": three_line_table
#import "utilities/indent-funs.typ": *
#import "utilities/bib-cite.typ": *
#import "utilities/set-heading.typ": _set_heading
#import "utilities/set-figure.typ": _set_figure
#import "utilities/set-numbering.typ": _set_numbering

#let project(
  anonymous: false, // 是否匿名化处理
  title: "",
  abstract_zh: [],
  abstract_en: [],
  keywords_zh: (),
  keywords_en: (),
  school: "",
  author: "",
  student-id: "",
  major: "",
  supervisor: "",
  date: "二〇二×年× 月",
  date2: "2001年1月1日",
  author_signature_path: "",
  mentor_signature_path: "",
  body,
) = {
  /* 全局整体设置 */

  // 设置标题, 需要在图表前设置
  show: _set_heading
  // 图表公式的排版
  show: _set_figure
  // 图表公式的序号
  show: _set_numbering
  // 参考文献
  show: _set_references.with(csl_style: "gb-7714-2005-numeric")
  // 修复缩进
  show: _fix_indent
  // 整体页面设置
  show: _set_paper_page_size
  // 修复中文粗体不能正确显示的问题
  show: show-cn-fakebold

  /* 封面与原创性声明 */

  // 封面
  paper_cover(
    cover_logo_path: "../assets/whu.png",
    anonymous: anonymous,
    author: author,
    title: title,
    student-id: student-id,
    major: major,
    school: school,
    supervisor: supervisor,
    date: date,
  )

  // 原创性声明
  declaration(anonymous: anonymous, 
    author_signature_path: author_signature_path,
    mentor_signature_path: mentor_signature_path,
    date: date2,
  )

  // 原创性声明与摘要间的空页
  // pagebreak()  没有空白
  show: front-matter

  // 进入下一部分，摘要
  pagebreak()
  counter(page).update(1)

  /* 目录与摘要 */

  // // 整体页眉
  // show: _set_paper_page_header.with(anonymous: anonymous)
  // // 目录与摘要的页脚
  // show: _set_paper_page_footer_pre


  // 摘要
  zh_abstract_page(keywords: keywords_zh, abstract_zh)

  pagebreak()

  // abstract
  en_abstract_page(keywords: keywords_en, abstract_en)

  pagebreak()

  // 目录
  chinese_outline(depth: 3, title: "目　　录")

  /* 正文 */
  show: main-matter.with(anonymous: anonymous)
  show: setup-algorithm-table

  counter(page).update(1)

  body
}
