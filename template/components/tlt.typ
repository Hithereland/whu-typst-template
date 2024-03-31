#let tlt_frame(stroke) = (x, y) => (
  left: 0pt,
  right: 0pt,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#let tlt(..args) = {
  set table(
    stroke: tlt_frame(rgb("000000"))
  )

  table(..args)
}
