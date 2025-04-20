#import "../utilities/style.typ": *
#import "../pages/tlt.typ": tlt

#let glossary(
  // --- 内容参数 ---
  title: "中英文缩略词对照表",
  entries: (), // 词汇条目数据

  // --- 控制参数 ---
  enabled: true, // *** 新增：控制是否生成此部分内容 ***

  // --- 样式参数 ---
  title_font: 字体.黑体,
  title_size: 字号.小二,
  title_weight: "bold",
  header_font: 字体.黑体,
  header_size: 字号.小四,
  header_weight: "regular",
  content_font: 字体.宋体,
  content_size: 字号.小四,
  content_weight: "regular",

  // --- 表格布局和线条参数 ---
  columns_config: (auto, 1fr, 1fr),
  column_align: (left, left, left),
  table_inset: (x: 6pt, y: 4pt),
  line_thickness: 0.6pt,
  line_color: luma(0),
) = {
  // --- 条件检查 ---
  // 如果 enabled 为 false，或者 entries 为空，则不生成任何内容
  if not enabled or entries.len() == 0 {
    return // 直接退出函数
  }

  // --- 标题 ---
  // 取消以下注释则将中英文缩略词对照表加入目录
  // set heading(level: 1, numbering: none)
  // show <_glossary_>: {
  align(center)[
    #v(5pt)
    #text(
      font: title_font,
      size: title_size,
      weight: title_weight
    )[#title]
    #v(15pt)
  ]
  // }
  // [= #title <_glossary_>]


  // --- 三线表 ---
  table(
    columns: columns_config,
    align: column_align,
    inset: table_inset,
    stroke: none, // 禁用默认边框

    // 顶部线条
    table.hline(stroke: line_thickness + line_color),

    // 表头
    table.header(
      text(font: header_font, size: header_size, weight: header_weight)[缩略语],
      text(font: header_font, size: header_size, weight: header_weight)[英文全称],
      text(font: header_font, size: header_size, weight: header_weight)[中文全称],
    ),

    // 表头下的线条
    table.hline(stroke: line_thickness + line_color),

    // 表格内容
    ..for entry in entries {
      (
        text(font: content_font, size: content_size, weight: content_weight)[#entry.at(0)],
        text(font: content_font, size: content_size, weight: content_weight)[#entry.at(1)],
        text(font: content_font, size: content_size, weight: content_weight)[#entry.at(2)],
      )
    }, // 注意这里的逗号

    // 底部线条
    table.hline(stroke: line_thickness + line_color),
  )
}