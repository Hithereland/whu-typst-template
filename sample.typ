// #import "cs-template.typ": *
#import "cse-template.typ": *
#import "@preview/codelst:2.0.2": sourcecode
#import "pages/tlt.typ": tlt
#import "pages/appendix.typ": appendix
#import "./utilities/style.typ": *

#import "pages/algorithm-table.typ": algorithm-table
#import "@preview/algorithmic:0.1.0"
#import algorithmic: algorithm


#show: project.with(
  anonymous: false,
  title: "基于 ChatGPT 的狗屁通文章生成器但是把标题加长到两行",
  author: "作者",
  abstract_zh: [
  先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也。

  宫中府中，俱为一体；陟罚臧否，不宜异同。若有作奸犯科及为忠善者，宜付有司论其刑赏，以昭陛下平明之理，不宜偏私，使内外异法也。
  ],
  abstract_en: [
  The founding emperor passed away before his endeavor was half completed, and now the empire is divided into three parts. Yizhou is exhausted and in decline, and this is truly a critical moment of survival or destruction. However, the palace guards are tirelessly serving within, and loyal subjects are sacrificing themselves outside, all in order to repay the late emperor's kindness and show loyalty to the current emperor. It is appropriate to listen to wise advice, to honor the late emperor's virtues, to inspire the courage of loyal subjects, and not to belittle oneself or distort the truth, in order to keep the path of loyal counsel open. 

  The palace and government are one entity, and punishments should be consistent. If there are those who commit crimes or show loyalty and virtue, they should be judged by the legal system to demonstrate your fairness as emperor, rather than showing partiality that would create different laws for those inside and outside the palace.
  ],
  keywords_zh: ("关键词1", "关键词2", "关键词3"),
  keywords_en: ("Keyword 1", "Keyword 2", "Keyword 3"),
  school: "复制粘贴写报告学院",
  student-id: "U000114514",
  supervisor: "你的老板",
  major: "XXXX 专业 0000 班",
  date: "二〇二×年× 月",
  date2: "     2001    年   1  月   1    日",
  author_signature_path: "/assets/whu.png",
  mentor_signature_path: "/assets/whu.png",
)


= 绪论

== 无穷小量

=== 描述

*无穷小量*（英语：Infinitesimal）或称“不可分量”是数学分析中的一个概念，用以严格地定义诸如“最终会消失的量” @gomperz1901greek、“绝对值比任何正数都要小的量”等非正式描述。在经典的微积分或数学分析中，无穷小量通常它以函数、序列等形式出现。

=== 定义

一个序列 $a = (a_n)_(n in NN)$ 若满足如下性质：

对任意的预先给定的正实数 $epsilon > 0$，存在正整数 $N$ 使得:
$ abs(a_k) < epsilon $
在 $k > N$ 时必定成立；或用极限符号把上述性质简记为@eqt:infinitesimal-limit：
$ lim_(x -> infinity) a_n = 0 $ <infinitesimal-limit>
则序列 $a$ 被称为 $n -> infinity$ 时的无穷小量。

=== 历史

无穷小量对应英语的*Infinitesimals*#footnote()[此词源于十七世纪的现代拉丁语新造词_infinitesimus_,本来是指一个序列的“第无穷个”元素]，用于表达一种极其微小的对象，人们根本无从看见它们或者量度它们。在日常生活中，_Infinitesimal_作为形容词可以指“非常小”，但不一定是“无穷的小”。而中文的“无穷小量”仅是技术用语。

“无穷小的量”这个概念最初在埃利亚学派有所讨论。柏克莱指出这种无穷小量的特性“既不是有限量，也不是无限小，又不是零”。而阿基米德在他的《机械原理方法论》(The Method of Mechanical Theorems) 初次提出过一种和无穷量有关的逻辑上严密的叙述#footnote[阿基米德著《机械原理方法论》；见阿基米德羊皮书]。不过在古希腊的数学系统里，实数并没有独立的存在地位，而是用几何上的长度来表示：$1$ 是代表某条线段的规定长度，用来给出测量所需的长度单位，数的加减法用线段的延长和截短来表示。阿基米德所说的是：对任意两个长度不等（无论长度相差多少）的线段，在长线段里不断截去短线段的长度，在有限次之后就不能再截下去，因为那些短线段长度的“和”超过了原本较长的那一条。如果把线段长度理解成数的话，则反映了实数集的阿基米德性质：没有任何实数 $x$ 可以满足条件 $abs(x) > 1, abs(x) > 1+1, abs(x) > 1+1+1$ ……，也就是说，无穷大的实数并不存在。尽管如此，阿基米德还是把无穷大量和无穷小量用于启发式的论证中，但在完整的数学证明里则拒绝使用它们，而致力于使用“穷竭法”, 类似于现在的“$ε-δ$语言”。

牛顿和莱布尼兹发展微积分学时使用过无穷小量，但这样的不严格使用引来一些批评者的攻击。贝克莱主教就是其中之一#footnote[乔治·贝克莱《分析者》（The Analyst; 或者“向异端数学家发表的演说”）]。尽管数学家、科学家、工程师等不断使用无穷小量来得到正确的结果，微积分却一直到后半十九世纪才等到了更严谨的，使用了$ε-δ$语言和集合论描述的形式，这项工作由奥古斯丁·路易·柯西，伯纳德·波尔查诺、卡尔·魏尔施特拉斯、格奥尔格·康托尔、理查德·戴德金等人完成。随着数学的发展及康托、戴德金、魏尔施特拉斯等人及他们的追随者的探索，他们的哲学家好友伯特兰·罗素、鲁道夫·卡尔纳普等人认为无穷小事实上是伪概念；但同时，赫尔曼·科恩等新康德主义者希望能找到一个保留无穷小的逻辑系统 @mormann2013infinitesimals。在二十世纪，无穷小量才得到了严格的处理，成为一种“数”。以上任何一种处理办法都不是错误的——如果正确地使用的话#footnote[不严格的处理办法，一般来讲要求使用者具有更正确的数学直觉。]。

在一份 HPM（数学史与数学教学，History and Pedagogy of Mathematics）的研究中 @Bagni2009HISTORYOC，对无穷小量在一些数学家眼里的认识（@tbl:no-poor-small-in-math-home-eye）有一个总结：

#figure(
  tlt(
    columns: 3,
    table.header[*人物*][*年代*][*对无穷小量的观点，或处理方法*],
    [欧几里得等古希腊数学家],[公元前300年],[穷竭法：他们相信用间接法才能使面积问题获得严格证明。],
    [卡瓦列里（B. Cavalieri）],[1598-1647],[把无穷小量的办法推进了一步(见祖暅原理)。],
    [沃利斯（J. Wallis）],[1616-1703],[他对极限的定义“含有正确的想法，但用词不严谨”。],
    [莱布尼兹],[1646-1716],[其算法很成功，但“对概念不太确定”。他对于“消失中的量”的立场是复杂的，而且随时间而变。],
    [欧拉],[1707-1783],[获得了很多重要结果，但不考虑真正无穷小量带来的困难。其观点受十七世纪典型的科学思维框架影响。],
    [达朗贝尔（J. d'Alembert）],[1717-1783],[拒绝承认“消失中的量”。他给出过极限的定义，但措辞不明确。],
    [拉格朗日],[1736-1813],[也拒绝承认无穷小量，企图把微积分归结为代数。],
    [柯西],[1789-1857],[其写下的定义至今依然通用，由当时可以使用的数学语言写成。]
  ),
  caption: figure.caption(
    position: top,
    [无穷小量在一些数学家眼里的认识]
  )
) <no-poor-small-in-math-home-eye>

#indent 就目前所知，在十九世纪以前没有任何形式上定义好的数学概念是直接把无穷小量当作“正常”的数来处理的，但很多想法其实已经出现。微积分的奠基人——牛顿、莱布尼兹、欧拉，以及很多其他人——以一种不严格的方式使用无穷小量，却也能得到正确而深刻的结果（类似地，实数在当时也没有正式的定义）。

==== 关键字

- 穷竭法
- 无穷乘积
- 牛顿的流数法
- 莱布尼兹的“$upright(d) x$”记号
- 欧拉对级数的处理
- 一致收敛
- 严格的极限概念
- 非标准分析

#sep-chapter

= 论 Typst 的图表公式使用方法

== 一个图

很大的武汉大学的图图 @gomperz1901greek @Bagni2009HISTORYOC 被放在了@fig:whu-img

#figure(
  image("assets/whu.png", height: 10%),
  caption: [我好想做武汉大学的狗啊
  
    #text(font: 字体.宋体, size: 字号.小五, weight: "regular"
  )[
    图注：A图表示xxx，B图表示syyy。
    ]
  ]
) <whu-img>

== 一段代码

学了四年不会写代码，我全力谢罪，但即便如此，@fig:some-cpp-code 仍然是我竭尽全力的作品。
#figure(
  kind: "listing",
  supplement: [代码],
  sourcecode[
  ```cpp
  #include <iostream>
  using namespace std;

  int mian() {
    return 0;
  }
  ```
)],
caption: [一段 C++ 代#cite(<Bagni2009HISTORYOC>)码]
) <some-cpp-code>

#indent 这优美的代码，是多么的动人！

这难道不能称之为绝世佳作吗！

@dragon-heading[以下小节]或者也可以说@dragon-heading[小节 114.514 ]（实际上并不是114.514）展示了一张图片。这句话将帮助你在文章中以自定义的文本引用各种各样的东西，仅需提供一个标签。

== 龙 <dragon-heading>

@fig:dragon 展现了一条龙。请欣赏龙。

#figure(
  image("/assets/dragon.jpg", width: 80%),
  caption: [龙]
) <dragon>

#indent 龙是好的！

请务必欣赏 @fig:dragon 中的龙。

== 伪代码

@algorithm-1 或者说@algorithm-1[算法 1 ]展示了一段伪代码。

#algorithm-table(
  caption: [QuickSort],
  supplement: "算法",
[#v(-0.8em)
*input:* An _Array_ to be sorted
#v(0.3em)

*output:* Sorted _Array_
#v(-1em)
#algorithm({
  import algorithmic: *
  Procedure("Quicksort", args: ([_Array_], ), {
    If(cond: [_Array_ .length $>$ 1], {
      State[choose a _pivot_]
      While(cond: [there are items left in _Array_], {
        If(cond: [_item_ $<$ _pivot_], {
          [put _item_ into _subarray1_]
        })
        Else({
          [put _item_ into _subarray2_]
        })
      })
      State[#smallcaps([Quicksort]) (_subarray1_)]
      State[#smallcaps([Quicksort]) (_subarray2_)]
    })
    State[_Array_ $<-$ _subarray1_ + _pivot_ + _subarray2_]
    Return[_Array_]
  })
})]
) <algorithm-1>


#pagebreak()

#bibliography(("ref.bib"), style: "gb-7714-2005-numeric")

#acknowledgement()[
  行文至此，落笔之处，我的大学生活即将画上句号。文章难作路难行，在我撰写论文的过程中，我遇到了许多困难和挑战，也得到了许多人的帮助和支持。在这里，我要向所有帮助过我的人表示衷心的感谢。

首先，我要感谢我的导师大老板#footnote[请填上您老板的名字]。感谢您在我整个论文写作过程中的悉心指导和耐心解答。您的专业知识和丰富经验对我的论文研究起到了至关重要的作用。从论文的选题、研究方法的选择到论文的撰写和修改，您都给予了我宝贵的建议和指导。没有您的支持和鼓励，我不可能完成这篇论文。您不仅是我的导师，更是我的榜样，您的敬业精神和治学态度将一直激励着我不断追求卓越。

其次，我还要感谢摸鱼学院#footnote[请填上您的学院的名称]的各位老师和同学们。感谢你们在我学习和生活中给予的帮助和支持。你们的教导和启发让我不断进步，你们的陪伴和鼓励让我感受到了集体的温暖和力量。

同时，我还要感谢我的家人和朋友们。感谢你们在我求学路上一直以来的支持和鼓励。你们的关爱和理解让我有了勇气和信心追逐自己的梦想。

最后，我要感谢所有在我论文研究过程中给予过帮助的人们。感谢你们为我提供的数据、资料、意见建议和some-cpp-code，让我能够更加深入地了解我的研究课题。

在这里，我向所有帮助过我的人们表示最诚挚的感谢。你们的支持和帮助是我前进的动力，也是我不断追求卓越的勇气。未来的日子里，我会继续努力，不断提高自己，不辜负你们的期望和信任。
]

#appendix()[親愛的客戶#footnote[嗷嗷嗷]：

感謝閣下使用天星銀行有限公司（「本行」或「我們」）的銀行服務。

因可疑識別代號警示第二期第一批計劃（「計劃」）的實施時間已從2024年3月31日推遲至2024年6月30日，為響應該計劃的實施而將於2024年3月29日生效的對“使用虛擬銀行服務的條款及細則“進行更新而添加的第三部分8.10（A）條款現進行撤銷。同時，對“私隱政策“第11條“直接促銷中個人資料的使用”的修訂也會被撤銷。

故請不需理會本行於2024年2月28日發出的“就更新使用虛擬銀行服務的條款及細則致客戶通知“。後期如有更新，會另行再作通知。

對於由此造成的任何不便，我們深表歉意。如有疑問，請立即致電（852）3718 1818 與我們聯絡。

天星銀行有限公司

天星銀行有限公司不會以電郵要求客戶提供個人資料，如戶口號碼、用戶名稱、密碼或一次性密碼等。如客戶收到此等要求或並非指定的收件人，請刪去有關電郵及立即致電 3718 1818 聯絡本行。請參閱天星銀行網頁上之《私隱政策》及網上及理財保安措施。

注意：請勿於電郵內透露您的戶口資料或信用卡號碼。

我們在保密方面有嚴格的保安準則及程序，防止您的個人資料在未經授權下被使用。滙豐絕對不會以電郵或其他方式要求核實個人資料，包括用戶名稱，密碼或賬戶號碼。如您接到這些要求，請致電2233 3000。

此電郵提示所載的資料乃保密，並可在法律上享有特權。倘若您不是指定的收件人，您不可複製、轉發、公開或使用此信息的任何部份。倘若您錯誤地收到此信息，請刪去此信息及在您系統中的所有其副本，並立即致電上述有關熱線通知我們。

經互聯網傳送的電郵信息，不保證準時、完全安全、不含錯誤或電腦病毒。寄件者不會承擔所引致任何錯誤或遺漏的責任。
]

// 封底空白
#page(
  header: none,
  footer: none,
  numbering: none,
  margin: (x: 2.5cm, y: 2.5cm)
)[
  // 空内容
]