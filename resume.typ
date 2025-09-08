#import "@preview/fontawesome:0.6.0": *

#set text(
  lang: "ru",

)

#let resume-item = (year, place, body) => {
  grid(
    columns: (auto, 1fr, auto),
    gutter: 8pt,
    text(weight: "light", size: 10pt)[#year],
    [
      #set text(size: 12pt, weight: "regular")
      #body
    ],
    text(weight: "light", size: 10pt)[#place],
  )
}

#let pill = (body, inset: none, color: red) => {
  box(
    inset: inset,
    fill: color,
    stroke: none,
    radius: 20%,
  )[#body]
}

#let contact = pill.with(
  inset: (
    x: 8pt,
    y: 4pt,
  ),
  color: rgb("#ff0000"),
)

#let skill = pill.with(
  inset: (
    x: 4pt,
    y: 4pt,
  ),
  color: rgb("#ff0000"),
)

#let contacts = (
  contact[#link("tel:+79537914849")[#fa-phone() +7(913)791-48-49]],
  contact[#link("https://github.com/danknil")[#fa-github() danknil]],
  contact[#link("https://t.me/danknil")[#fa-telegram() \@danknil]],
  contact[#link(
      "mailto:bmisa6233@gmail.com",
    )[#fa-envelope(solid: true) bmisa6233\@gmail.com]],
)


#set page(
  paper: "a4",
  header: [
    #align(center)[
      = Балашов Михаил
      #text(size: 10pt, "Разработчик ∘ Backend")
    ]
  ],
)

#align(center)[
  #smallcaps(all: true)[
    == Контакты(кликабельно)
  ]
  #set text(baseline: -1pt, size: 10pt)
  #grid(
    columns: 4,
    column-gutter: 8pt,
    ..contacts,
  )
]

#set text(size: 10pt)

#show heading.where(level: 1): it => [
  #set text(size: 14pt, weight: "bold")
  #set align(left)
  #set block(above: 1em)
  #text[#it.body]
  #box(width: 1fr, line(length: 100%))
]
#show heading.where(level: 2): it => [
  #set text(size: 10pt, weight: "bold")
  #set align(left)
  #set block(above: 1em)
  #text[#it.body]
]


= Обо мне
= Образование
#resume-item("test", "test")[abcd]
= Проекты
= Навыки
== Языки программирования
#skill[test]
