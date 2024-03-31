#let acknowledgement(
  anonymous: false,
  title: "致　　谢",
  outlined: true,
  body,
) = {
  if (not anonymous) {
    pagebreak(weak: true)
    [
      #heading(level: 1, numbering: none, outlined: outlined, title) <no-auto-pagebreak>

      #body
    ]
  }
}