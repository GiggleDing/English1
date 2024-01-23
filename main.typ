#import "template.typ": *

#show: conf.with(
  title: "2005～2024年考研英语一阅读题翻译",
  authors: (
    (name: "Giggle Ding", email: "giggle.ding@gmail.com"),
  ),
)

#include "./contents/2005.typ"
// #include "./contents/2024.typ"


#set page(numbering: "I")
#counter(page).update(1)
#include "./contents/vocabulary.typ"