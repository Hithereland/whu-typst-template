#import "template/template.typ": thesis

// Magic code for fake bold
// reference: https://github.com/typst/typst/issues/394#issuecomment-1987055478
#show text.where(weight: "bold").or(strong): it => {
  show regex("\p{script=Han}"): set text(stroke: 0.025em)
  it
}

#let (
  doc, cover, declaration, front-matter, abstract-zh, abstract-en, outline-page, main-matter
) = thesis(
  title: "这是标题×",
  author: "张  某  某",
  student-id: "2020123456789",

  major: "哲　　学",
  school: "哲学学院",
  
  supervisor: "李　　某",

  date: "二 〇 二 一 年 六 月",
)

#show: doc

#cover()

#declaration(
  author_signature_path: "/assets/whu.png",
  mentor_signature_path: "/assets/whu.png"
)

#show: front-matter

#abstract-zh(
  keywords: ("摘要", "论文", "主题", "小编")
)[
  论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。
]

#pagebreak()

#abstract-en(
  keywords: ("abstract", "paper", "topic", "editor")
)[
  How should one compose an abstract for an academic paper? The abstract is a crucial component of a research paper, but its optimal construction remains the subject of much deliberation. In this discourse, I intend to delve into the intricacies of abstract writing. To write an abstract is fundamentally an exercise in reflective writing practice. One might then inquire as to why there is a prescribed method for penning abstracts? This query is undoubtedly one of widespread intrigue. Perhaps surprisingly, the stipulated formula for abstract composition indeed exists, and I, too, find this revelation rather astonishing. These are the essential elements of crafting an abstract—does it not appear almost magical? Having perused today’s content, what are your thoughts on the matter? In drafting an abstract for a scholarly document, meticulous attention must be devoted to the choice of words, ensuring the precis accurately and lucidly encapsulates the essence of the paper while piquing the interest of prospective readers. An exemplary abstract succinctly delineates the research objective, methodology, principal findings, and conclusions. Clarity and brevity should be paramount, with careful avoidance of excessive jargon and complex sentence constructs. Effective paragraph structuring and logical coherence will endow the abstract with enhanced readability and cogency.
]

#pagebreak()

#outline-page()

#pagebreak()

#show: main-matter

= 绪论

== 绪论第一节

=== 三级标题应该出现在目录中

这里是绪论第一节第一条

这里有很多字

很多字只是为了试一下分页正常不正常

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

==== 四级标题不应该出现在目录中

这个标题不应该出现在目录中

=== 三级标题

这个标题又在

== 二级标题

这下面还有东西。神奇吧！

#pagebreak()

= 论 Typst 的图表公式使用方法

== 一个图

很大的武汉大学的图图被放在了@whu-img

#figure(
  image("assets/whu.png", height: 10%),
  caption: "img"
) <whu-img>
