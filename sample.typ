#import "template.typ": *

// Magic code for fake bold
// reference: https://github.com/typst/typst/issues/394#issuecomment-1987055478
#show text.where(weight: "bold").or(strong): it => {
  show regex("\p{script=Han}"): set text(stroke: 0.025em)
  it
}

#show: project.with(
  title: "这是标题×（论文题目，楷体一号居中）",
  auther: "张  某  某",
  id: "2020*********",
  major: "哲　　学",
  school: "哲学学院",
  mentor: "李　　某",
  date: "二 〇 二 × 年 × 月（宋体四号居中）",

  auther_signature_path: "./assets/whu.png",
  mentor_signature_path: "./assets/whu.png",

  abstract_zh: "论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。",
  abstract_en: "How should the abstract of a paper be written? Abstracts are crucial for any paper, but how should one go about crafting them? Let's delve into this together. In essence, writing an abstract for a paper is about considering the approach to writing. So why exactly should we write abstracts the way we do? This is a question many might find intriguing. You might be surprised, why should abstracts be written in such a manner? Yet, that's the reality, and it's quite surprising even for me. That's the crux of writing abstracts for papers—don't you find it fascinating? After going through today's content, what are your thoughts?In the abstract section of a paper, we need to carefully consider every word choice, ensuring that the abstract accurately and clearly summarizes the content of the paper while also capturing the reader's interest. An excellent abstract should concisely introduce the research's purpose, methods, main results, and conclusions. Furthermore, it's important to use clear and concise language, avoiding excessive use of technical jargon and complex sentence structures. Through proper paragraph organization and logical connections, the entire abstract should possess good readability and coherence.",
  keywords_zh: ("摘要", "论文", "主题", "小编"),
  keywords_en: ("abstract", "paper", "topic", "editor")
)

= 绪论

== 绪论第一节

=== 绪论第一节第一条

这里是绪论第一节第一条

这里有很多字

很多字只是为了试一下分页正常不正常

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

论文的摘要到底该如何写呢？摘要对于一篇论文来说非常重要，但是它到底应该怎么写呢？让我来和大家一起深入探讨吧。写论文的摘要其实就是在思考写作的方式。那么为什么我们要如何写论文的摘要呢？这个问题相信大家都很好奇。或许你会感到很吃惊，论文的摘要为什么要如此书写呢？但实际上，情况就是这样，我也感到非常惊讶。这就是写论文摘要的要点了，你觉得是不是很神奇呢？阅读完今天的内容后，你有什么想法呢？在论文的摘要部分，我们需要认真考虑每个字的选择，确保摘要能够准确而清晰地概括论文的内容，并吸引读者的兴趣。一个优秀的摘要应该简明扼要地介绍研究的目的、方法、主要结果和结论。同时，还要注意使用清晰、简洁的语言，避免使用过多的专业术语和复杂的句子结构。通过合理的段落组织和逻辑连接，使得整个摘要具有良好的可读性和连贯性。

= 第二章
