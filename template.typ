#let conf(title: "", authors: (), body) = {
  set document(author: authors.map(a => a.name), title: title)
  set par(justify: true)
  set text(font: ("Times New Roman", "Source Han Serif"), size: 10pt, lang: "zh")

  v(0.6fr)
  
  v(9.6fr)
  text(2em, weight: 700, title)
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start)[
        *#author.name* \
        #author.email
      ]),
    ),
  )

  v(2.4fr)
  pagebreak()

  outline(depth: 1)
  counter(page).update(0)

  set page(numbering: "1", number-align: center)

  show heading.where(level: 1): it => pagebreak(weak: true) + it

  body
}
