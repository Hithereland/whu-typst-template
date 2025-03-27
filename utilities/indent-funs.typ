// 缩进相关函数

#let indent_par(body) = {
  box(width: 1.8em)
  body
}

#let empty_par() = {
  v(-1em)
  box()
}

#let _fix_indent(body) = {
  // 首段不缩进，手动加上 box
  show figure: it => {
    it + empty_par()
  }
  show math.equation.where(block: true): it => {
    it + empty_par()
  }  

  body
}

// 中文缩进
#let indent = h(2em)

// 假段落，附着于 heading 之后可以实现首行缩进
#let fake-par = {
  v(-1em)
  box()
}
