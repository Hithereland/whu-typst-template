#import "utils/style.typ": *
#import "utils/indent.typ": *

#import "components/doc.typ": doc
#import "components/cover.typ": cover
#import "components/declaration.typ": declaration
#import "components/front-matter.typ": front-matter
#import "components/abstract-zh.typ": abstract-zh
#import "components/abstract-en.typ": abstract-en
#import "components/outline.typ": outline-page
#import "components/main-matter.typ": main-matter
#import "components/tlt.typ": tlt

#let thesis(
  title: "",
  author: "",
  student-id: "",

  major: "",
  school: "",
  
  supervisor: "",

  date: "",
) = {
  (
    doc: (..args) => {
      doc(
        info: (
          title: title,
          author: author,
        ),
        ..args,
      )
    },

    cover: () => {
      cover(
        title: title,
        author: author,
        student-id: student-id,
        major: major,
        school: school,
        supervisor: supervisor,
        date: date
      )
    },

    declaration: (..args) => {
      declaration(..args)
    },

    front-matter: (..args) => {
      front-matter(..args)
    },

    abstract-zh: (
      keywords: (),
      content
    ) => {
      abstract-zh(
        keywords: keywords
      )[#content]
    },

    abstract-en: (
      keywords: (),
      content
    ) => {
      abstract-en(
        keywords: keywords
      )[#content]
    },

    outline-page: (..args) => {
      outline-page(..args)
    },

    main-matter: (..args) => {
      main-matter(..args)
    }
  )
}
