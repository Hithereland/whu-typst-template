#import "./style.typ": *

#let _set_heading(body) ={
    set heading(numbering: "1.1.1.1")
    set heading(supplement: [节])

    // 参考自 https://github.com/nju-lug/modern-nju-thesis/blob/main/utils/custom-heading.typ
    show heading: it =>{
        if it != none {
        set par(first-line-indent: 0em)
        if it.has("numbering") and it.numbering != none {
        numbering(it.numbering, ..counter(heading).at(it.location()))
        [] // 去掉了这里的空格，使得序号和标题之间没有空格
        }
        it.body
    } else {
        ""
    }
    }
    show heading.where(level: 1): it => {
        set align(center)
        set text(weight: "bold", font: 字体.黑体, size: 字号.小二)
        set block(spacing: 1.5em)
        it
    }
    show heading.where(level: 2): it => {
        set text(weight: "bold", font: 字体.黑体, size: 字号.四号)
        set block(above: 1.5em, below: 1.5em)
        it
    }
    show heading.where(level: 3): it => {
        set text(weight: "bold", font: 字体.黑体, size: 字号.小四)
        set block(above: 1.5em, below: 1.5em)
        it
    }
    show heading.where(level: 4): it => {
        set text(weight: "bold", font: 字体.黑体, size: 字号.小四)
        set block(above: 1.5em, below: 1.5em)
        it
    }

    body
}