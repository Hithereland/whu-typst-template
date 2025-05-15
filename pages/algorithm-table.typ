#import "@preview/algorithmic:0.1.0"
#import algorithmic: algorithm

#let algorithm-table = figure.with(kind: "algorithm-table", supplement: "Algorithm")

#let setup-algorithm-table(
  body-inset: (bottom: 5pt),
  body
  ) = {
  show figure.where(kind: "algorithm-table"): it => {
    let booktabbed = block(
      stroke: (y: 1.3pt),
      inset: 0pt,
      breakable: false,
      width: 100%,
      {
        set align(left)
        block(
          inset: (y: 5pt),
          width: 100%,
          stroke: (bottom: .8pt),
          {
            strong({
              it.supplement
              sym.space.nobreak
              counter(figure.where(kind: "algorithm-table")).display(it.numbering)
              if it.caption != none {
                [: ]
              } else {
                [.]
              }
            })
            if it.caption != none {it.caption.body}
          }
        )
        set par(first-line-indent: 0em, leading: 0.2em, hanging-indent: 2em)
        show par: set block(spacing: 0.2em)
        block(
          inset: body-inset,
          breakable: false,
          width: 95%,
          it.body
        )
      }
    )
    let centered = pad(x: 5%, booktabbed)
    if it.placement in (auto, top, bottom) {
      place(it.placement, float: true, centered)
    } else {
      centered
    }
  }
  body
}
