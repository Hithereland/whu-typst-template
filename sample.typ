#import "template/template.typ": thesis, tlt, indent

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
  keywords: ("赤壁", "江月", "水與月", "逝者如斯")
)[
  壬戌之秋，七月既望，蘇子與客泛舟遊於赤壁之下。清風徐來，水波不興，舉酒屬客，誦明月之詩，歌窈窕之章。少焉，月出於東山之上，徘徊於斗牛之間，白露橫江，水光接天；縱一葦之所如，凌萬頃之茫然。浩浩乎如馮虛御風，而不知其所止；飄飄乎如遺世獨立，羽化而登仙。

於是飲酒樂甚，扣舷而歌之。歌曰：「桂棹兮蘭槳，擊空明兮泝流光。渺渺兮予懷，望美人兮天一方。」客有吹洞簫者，倚歌而和之，其聲嗚嗚然，如怨如慕，如泣如訴，餘音嫋嫋，不絕如縷。舞幽壑之潛蛟，泣孤舟之嫠婦。

蘇子愀然，正襟危坐，而問客曰：「何為其然也？」

客曰：「『月明星稀，烏鵲南飛』，此非曹孟德之詩乎？西望夏口，東望武昌，山川相繆，鬱乎蒼蒼，此非孟德之困於周郎者乎？方其破荊州，下江陵，順流而東也，舳艫千里，旌旗蔽空，釃酒臨江，橫槊賦詩，固一世之雄也，而今安在哉？況吾與子，漁樵於江渚之上，侶魚蝦而友麋鹿；駕一葉之扁舟，擧匏樽以相屬。寄蜉蝣於天地，渺滄海之一粟，哀吾生之須臾，羨長江之無窮。挾飛仙以遨遊，抱眀月而長終。知不可乎驟得，託遺響於悲風。

蘇子曰：「客亦知夫水與月乎？逝者如斯，而未嘗往也；盈虛者如彼，而卒莫消長也，蓋將自其變者而觀之，則天地曾不能以一瞬；自其不變者而觀之，則物與我皆無盡也，而又何羨乎？且夫天地之間，物各有主，苟非吾之所有，雖一毫而莫取。惟江上之清風，與山間之明月，耳得之而為聲，目遇之而成色，取之無禁，用之不竭，是造物者之無盡藏也，而吾與子之所共適。」

客喜而笑，洗盞更酌。肴核既盡，杯盤狼籍，相與枕藉乎舟中，不知東方之既白。
]

#pagebreak()

#abstract-en(
  keywords: ("Red Cliffs", "Moon", "Water and moon", "Transience of life")
)[
  In the autumn of the year Renxu, beyond the full moon of the seventh month, Master Su and his companion embarked on a boating excursion below the Red Cliffs. A gentle breeze wafted toward them, the water remained undisturbed, and raising their cups to their guest, they recited poems of the bright moon and sang of refined and elegant beauty. Shortly thereafter, the moon ascended above the eastern mountains, weaving through the constellation of the Ox, while a silver dew blanketed the river, merging water with sky. Adventuring as far as a single reed could take them, they found themselves amidst an expanse of vague remoteness—vast and boundless as if riding the wind without knowing their destination; floating, as if transcending this world in solitude, on the verge of becoming celestial beings.

Thus, with great enjoyment from the wine, they tapped the boat's sides and sang. Their song went, "With an oar of cassia and a paddle of orchid, we strike the luminous void, trailing light in our wake. My feelings vast and distant, I gaze upon a beauty, in a corner of the sky." One of the guests played a bamboo flute, harmonizing with the singing, and the sound resonated mournfully—infused with longing and yearning, like tears and pleadings, its lingering notes twisted and turned, endless as a thread. It aroused the hidden dragons of the secluded gorges and echoed the weeping of an abandoned woman in a solitary boat.

Master Su became pensive, straightened his robe, sat upright, and asked the guest, "Why is it so?"

The guest replied, "Isn't it said in the poetry of Cao Mengde, 'The moon is bright, the stars are sparse, the crows and magpies fly southward'? Looking west, one imagines Xia Kou; gazing east, one sees Wuchang. With landscape so intermingled, how lush and luxuriant it appears. Are these places not where Mengde once found himself trapped by Zhou Yu? As he broke through Jingzhou and captured Jiangling, advancing downstream towards the east, his warships stretched a thousand li, and his banners veiled the heavens. He indulged in wine by the river, laying down his halberd to compose poetry, truly a hero of his time. Yet now, where does he stand? Moreover, you and I, as mere fishermen and woodcutters on the river's islets, befriending fish and shrimp, companions of deer and does; navigating a tiny skiff, sharing cups made of gourd. We are but mayflies in the immense universe, a mere grain in the boundless ocean, bemoaning the transience of life, yet envying the endless flow of the great river. We long to ride with the flying immortals on their wanderings, embrace the bright moon for eternity. Knowing such things cannot be hastily grasped, we entrust our lingering echoes to the sorrowful wind."

Master Su replied, "Does the guest also understand the nature of water and the moon? The past is like this—never returning; the cycles of waxing and waning, forever without end. If one observes from the perspective of change, then even heaven and earth cannot last for a moment; but seen from the aspect of the unchanging, then everything, including ourselves, is boundless. Why then should we feel envy? Besides, between heaven and earth, every entity has its master—if it is not mine, not even a tiny speck should be taken. But the refreshing breeze over the river and the clear moon between the hills, these are heard by the ear and become sound, are met by the eye and become color, can be taken without prohibition and used without depletion. They are the inexhaustible treasury of the Creator, and hence, are what you and I can both freely enjoy."

Pleased, the guest laughed, cleaned the cups, and poured another round of drinks. As the snacks were consumed and the dishes and cups became disordered, they laid down together in the boat, unaware that dawn was already whitening the east.
]

#pagebreak()

#outline-page()

#pagebreak()

#show: main-matter

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
    table.header[人物][年代][对无穷小量的观点，或处理方法],
    [欧几里得等古希腊数学家],[公元前300年],[穷竭法：他们相信用间接法才能使面积问题获得严格证明。],
    [卡瓦列里（B. Cavalieri）],[1598-1647],[把无穷小量的办法推进了一步(见祖暅原理)。],
    [沃利斯（J. Wallis）],[1616-1703],[他对极限的定义“含有正确的想法，但用词不严谨”。],
    [莱布尼兹],[1646-1716],[其算法很成功，但“对概念不太确定”。他对于“消失中的量”的立场是复杂的，而且随时间而变。],
    [欧拉],[1707-1783],[获得了很多重要结果，但不考虑真正无穷小量带来的困难。其观点受十七世纪典型的科学思维框架影响。],
    [达朗贝尔（J. d'Alembert）],[1717-1783],[拒绝承认“消失中的量”。他给出过极限的定义，但措辞不明确。],
    [拉格朗日],[1736-1813],[也拒绝承认无穷小量，企图把微积分归结为代数。],
    [柯西],[1789-1857],[其写下的定义至今依然通用，由当时可以使用的数学语言写成。]
  ),
  caption: [无穷小量在一些数学家眼里的认识]
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

#pagebreak()

= 论 Typst 的图表公式使用方法

== 一个图

很大的武汉大学的图图被放在了@whu-img

#figure(
  image("assets/whu.png", height: 10%),
  caption: "img"
) <whu-img>

#pagebreak()

#bibliography(("bib/bib_sample.bib"), style: "gb-7714-2005-numeric")
