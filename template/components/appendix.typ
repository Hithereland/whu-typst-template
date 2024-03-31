#let appendix(
  title: "附　　录",
  outlined: true,
  body,
) = {
  pagebreak(weak: true)
  [
    #heading(level: 1, numbering: none, outlined: outlined, title) <no-auto-pagebreak>
    
    #body
  ]
}