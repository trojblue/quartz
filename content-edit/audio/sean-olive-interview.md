---
title: "关于测量和音频行业: Livestream with Sean Olive"
tags:
- note
- 音乐
---


[Live Stream with special guest Dr. Sean Olive from Harman International! - YouTube](https://www.youtube.com/watch?v=z7vnKHxtVUE)

这篇原先记录在2021年10月14号, 发完到知乎想修订却被删除, 然后鸽了差不多半年终于找出时间把原文的问题改了一些.

用代码框圈起来的注释来自不愿意透露姓名的音频测量相关大佬, 因为觉得可能自己的口头意见不够文章分量, 所以不想挂出自己名字, 让我改成自己的话

但有些地方实在是不熟, 只好原话贴出来了, 如果你碰巧看到的话我表示抱歉(

另外哪天改注意想让不匿名了的话随时告诉我, 我非常乐意做宣传.

---

## 关于测量

Q: 为什么要用哈曼曲线评价耳机? 
- olive: "99%的录音都是在录音室里完成 
- "there no such a target where people will like"; 人群一般分成3个喜好组 (63%的人喜欢哈曼, 剩下百分比喜欢更多低频/更多高频) 
- 一般人并不知道"reference target"是什么意思 
- fidelity rating是▨▨▨▨▨▨得到的分数 
- preference rating是观众的喜好打分, 两款耳机按更喜欢A/B的程度打分 
- 研究后发现Fidelity rating和preference rating 有高相关性 (correlation, 不是causation) 
- 注意以上是以*室内*听音为目标的结果

```
(倒数第四行)写错了, fidelity rating也是听众打分
而且这部分是Toole的音箱研究，不是耳机研究
Olive的耳机研究没有涉及fidelity
(Subjective Measurements of Loudspeaker Sound Quality and Listener Performance, FLOY
(LoudspeakerMeasurementsand Their Relationship to Listener Preferences:Part 1 & Part
```
.

(关于哈曼的低频):

- olive: "以前觉得iem想要更多bass是补偿房间在音箱里的效果", 但实际上消费者就是更喜欢低
频, 不完全是下意识补偿房间曲线
- 作为证据, 消费者也更喜欢低频更多的音箱, 不仅仅局限于耳机

.

Q: 关于一些人喜欢与哈曼曲线偏离的耳机, 为什么? (主持人作出以下猜测):
1. 可能没听过很多耳机, 是遇到的里面最好的
2. 如果是使用eq接近target但不喜欢, 考虑eq音量是否一致;
3. 用于eq的耳机测量可能不准确

.

(关于测量的误差):

- 测量设备(test fixture)不同, 得到的频响不能直接拿来对比 (etc. miniDSP, 711, 5128)
- 耳机品控差异是否很大(自己耳机 未必和别人的测量一致)
- 生产阶段保证一致性很简单, 用土麦+木板就可以;
- 但是没有Pinna耳廊 没有coupler耦合器, 木板平直会低估人耳低频泄露的量, 不能用于研发
- 设计曲线target的时候对测量仪器要求更高, 需要用更好的设备, 比如人头

.

(关于哈曼的测量):

- 一开始用的43AG单声道(穷, 用GRAS丐中丐)
- 客观测量的时候, 因为人戴耳机就可能会低频泄露, 所以测量人耳的时候也要设计成和人耳一样
会泄露的样子
- 现在的哈曼测试还是继续用45CA改, 以后可能会转向用5128, 但现在两者不能互相转换, 测到的
结果也不能直接用同一个target curve比较
- 哈曼关于5128的研究目前不会公开, 原因是怕竞争者做出更好的耳机
- 哈曼被三星收购了
- 三星正在用哈曼曲线开发tws (galaxy buds pro)

.

(关于JBL):

- JBL的定位是"youth brand", 所以会增加+3db低频, 来更接近"目标人群(年轻人)喜好", 但也会加
上eq调节功能
- 年轻人更偏好低频, 50岁以后的人会更偏好高频
- "trained listener"常常说自己不喜欢低频, 但这是受"训练"影响, 和人群本身喜好无关, 换句话说宣称自己不喜欢低频 会让自己看上去更pro
- 低频减少, 带来的掩蔽效应也更小, 中高频率会听的更清晰
- 但听力损失(靠audiogram测量)和低频喜好之间的关系没有足够多数据支持

小, 中高频率会听的更清晰, 但听力损失(audiogram测量)和低频喜好之间没有足够多数据

.

哈曼"in-room flat bass"的低频在变得越来越多, 但是测量并没有用很多数据点:

1. 数据点少是用了frequency smoothing
2. 空间变化(30度, 60度, etc)会带来不确定性
3. 直到2-3k的directional cue不怎么受smoothing影响, 但大于3k会受到影响
4. 3k以上的频段每个人耳道响应不同, 即使做得很精确也不具备普遍性, 干脆就平滑了
5. 数据点太细可能带有测量错误, 牺牲精度希望减少带有的错误

.

Q: 如何评价不同测试平台下测量的不同?

- Harman target本身数据点不多, 把精细测量有很多峰谷的耳机数据匹配到target会有影响:
- 43CA有固定8-10k滚降, 如果反向eq的话eq本身的q值很高, 一般eq尽量少q值)
- 因为耳机生产时有差异, 佩戴有差异
- 实际听到的q峰很可能不在别人测量的位置上,
- 大q峰eq会留下尖锐"residue" (改变频响里不想要改变的地方), 引入失真
- 45CA和5128的HRTF特性不同, 比如5-8k

.


关于从消声室采样in-room response: 太pro了, 没听懂, olive说phd学生可以花4年来研究解决这个问题

```
说的是Struck的论文(名字在下面)
olive说这个需要进一步验证
但从5128哈曼曲线和asr预测曲线的相似度来看，这个成果可靠的可能性很大
[图↓]
(Olive)给了5128下k701的测量结果和k701的error curve
根据这两项，你可以计算出50到10khz的5128哈曼曲线数据
Free Plus Diffuse Sound Field Target Earphone Response Derived From Classical Room Aco
by Christopher, J. Struck
```

.

Q: 哈曼如果改用5128(针对10k以上的部分, 比较43AG/45CA, etc), 会有哪些好处?

- 5128模拟真实耳朵声阻抗的效果更好, 不像711的8-10k没救了 ("all hats are off")
- 711的10k以上哈曼曲线留空也是这个原因(10k以后测不准), 有5128以后能测更宽的范围
- 低频: 5128可能会改变低频泄露, 也许会更准(或者更差), 没有进行这方面的研究
- (主持人): 5128的形状还是使用是ITU P58, 还是简化的人头形状, 未必准确; 45CA头型的研究更全
- 主持人2: 而且hifi爱好者的头都更大(笑)

.


那5128 should we get it?

- 711(45CA)已经有很多测量数据, 所以会依旧被广泛使用, 而且便宜
- (主持人) 5128很贵, 带嘴没身子的版本会便宜40%, 但还是很贵

.

Q: 不同测量设备, MiniDSP EARS? 5128? 711? 山寨711? 如何解决测量本身的混乱?

- (主持人): 43AG还有不同的Pinna无法一起比较; 但因为便宜 , 大伙还是会干用不同设备测量这种事; 
- (Olive) 测量的目的是做更好的耳机; 会interpret的话也能用, 比如butterworth等人做过不同测量器械的对比结果
- 希望能尽早做出行业规范
> [ASR Headphone Testing and BK 5128 Hats Measurement System](https://www.audiosciencereview.com/forum/index.php?threads/asr-headphone-testing-and-bk-5128-hats-measurement-system.15147/page-5)



## 关于耳机

Q: 很多超贵hifi耳机的曲线和Harman不同, 如何评价 (etc. abyss 1266耳机):

- 一些耳机就没有想设计成"自然"风格
  - 这些厂商的目的是editorialize the music, 一些人会喜欢, 但更多人可能不喜欢
  - (前面实验证明普通人更喜欢"自然"声音)

.

Q: 耳机做的高频特别多是否是为了补偿老烧的听力损失?

- olive: 很多音响展里60岁都很年轻, 很多老人, it's a dying industry
- 老人更有可能付更多钱, 特别是音箱来说有可能; 
- 但耳机来说受众群体很年轻, 且更加technical, 大学生等很多, 测量者和diyer都很多, 不像传统音响行业
- 耳机来说这个行业更讲科学, 不好糊弄, 厂商也也更倾向于干脆自己放频响, 测量结果好的话也能拿来当宣传点
  - 耳机测量比音响更便宜, - "You can't hide anymore behind the market now"

.

Q: 如果有人设计了本身不哈曼的耳机, 但专门给出了EQ来接近哈曼曲线, 这合理吗(etc. Audeze)

- olive: 很多耳机听起来很差, 但总有人说"EQ以后很好听", 那为什么不直接做好听的耳机呢

```
olive说完后加上了一个“audeze这样做很intetesting”的评价：
他不是不满于这种行为，只是不理解为什么不一开始就做的接近target
// 我还是觉得这里可能是带点yygq的
```

很多哈曼大耳都是开放式(stealth, sundara, hd650, etc); 问题是低频泄露很多; 大耳哈曼设计是否存在物理限制, 难以设计封闭式哈曼?

- olive:对, 存在, 像比如sundara低频滚降问题
- close-back (封闭大耳)可能会有resonance问题
- 但另一方面也可能和心理声学有关系, 因为开放式能听到外面的声音, 可能会让你"感觉"更真实

.

Q: 关于统计模型, 如果耳机某个频段(etc高频)和哈曼不同 其他部分完全一致, 是否可能会更好听?
(略偏离哈曼是否可能更好听)

- olive: FR上测量和target的区别是deviation
- error curve平缓的话评分会更高, 这也是为什么sundara等基本没有低频但哈曼评分却很高
- 低频(<50hz), 高频(>10k), 对喜好的影响都更小, 但可能是各种的因素的影响, 中间的部分没有特别重要的点
  - 测量, 听力, 音乐本身高频信息少, etc 都有可能是因素

.

Q: 如果频响不变的话, 除了还有什么变量影响听感?

- non-linear distortion: 实验的时候很难找足够多高失真的耳机, 但少量耳机里线性失真不同的耳机eq后喜好测的很近
```
这里是nonlinear distortion
而且Olive的意思是他们的实验中除了一两个耳机之外，
其他耳机的非线性失真往往没有高到可以让听众有明显的偏好差异
至于这个结果算不算明显差异，大家自己判断吧
[图↓]
The Correlation Between Distortion Audibility and Listener Preference in Headphones
by Steve Temme(1), Sean E. Olive(2), Steve Tatarunis(3), Todd Welti(4), and Elisabeth
```

老烧爱用的词"细节, 微动态" (detail, micro-dynamics), etc, 这些词如何评价?

- olive: 先定义这些词的意思, 然后设置stimulus / stimuli, 然后可以得到稳定复现的环境, 再测试
- (frequency response in *time domain*, in frequency domain, etc, 最后找到核心数据)
- 有研究说500个老烧用词最后核心描述点是9个左右
- 总之只要能复现这些词语描述, 就能进行测试找到有哪些影响因素

```
(倒数第二行)我不知道olive说的到底是哪个，但是最接近的是delta的sound wheel统计
他们筛选了超过600个描述用语，并进行了分类和删减同义词
A common lexicon for spatial sound quality assessment – latest developments (Nick Za
Perceptual characteristics of audio - The sound wheel can be used to provide an obje
Methods for selecting and describing attributes and terms, in the preparation of sub
The development of a Sound Wheel for Reproduced Sound (Torben Holm Pedersen(1) & Nic
Olive自己也做过类似的研究，不过不怎么精细
A Multiple Regression Model For Predicting Loudspeaker Preference Using Objective Me
```
如果把风评不同的耳机EQ到相同target, 保证失真inaudible, 互相比较, 是否能找到影响听感的其他因素?

- (风评不同: 为了便于对比, etc. 一个风评"高解析"但频响很屎, 另一个也风评"高解析"但接近target)
- olive: 可以考虑云听, 用高还原的耳机, 录制这两个在先攻fixture上的东西, 再回放AB比较

.

Q: 提到这点, 如何评价云听(sound demo)?

- olive:[soundstagesolo](https://www.soundstagesolo.com/) 的Butterworth 在网上做过云听demo, 但录制之后发到网上, 不知道听众会使用什么样的设备回放, 缺乏对实验的控制
- 很多云听未必用了准确的设备制作, 而听者也并不知道测量设备区别的重要性
- 可以做相对比较(A对比B低频更少, etc), 但无法进行绝对性比较

.

Q: 如果让回放者用指定耳机回放, 那会更有参考性吗?

- olive: 这样比较好, 我们也这么做过, 也能得到比较好的correlation

(闲聊: 一个没体验过的人无法靠这些数据学习, (就像盲人无法靠他人描述学会颜色)
- 频响曲线的判断需要相关知识，而云试听不需要，能直接知道耳机的声音，
- 不过因为不能保证听众under same situation，所以不够准确

.


Q: 你觉得对耳机感兴趣的普通消费者最需要了解的东西是什么?

1. 使用环境. (开放式大耳, 封闭式大耳, 旅行, 在家, etc)
2. 佩戴 (大耳低频佩戴不好会泄露, 入耳的耳套也会泄露), 因为低频在(loudspeaker的)喜好曲线里占30%, 很重要

```
这里olive强调了30%是loudspeaker
“低频在偏好里占30%”是音箱偏好统计结果，不一定适合耳机
而即使是音箱偏好结果，这个结论在论文里的得出过程也很难称得上没有问题
但Olive喜欢引用自己的这个结论，所以，what can you do
```

Q: 你觉得对完全不懂的人, 哈曼曲线知识里最重要的时候什么?

1. 找良好的测量, 照着测量好(接近曲线?)的耳机去试听, 来建立对频响的基本认识

.

Q: 你觉得最好的耳机是?

- olive: Dan Clark Stealth, 但用不起太贵了
- 电脑的话, 用的是k371 (另一个主持人也是k371)
- 出门和外出的时候, galaxy buds pro
- 其实只是因为自己手边测量过这些, 方便获取

.

Q: 如何评价AKG现在的旗舰耳机?

- 入耳n5005, 照着哈曼做的, 但戴着会掉
- 大耳k812, 没多说

.

Q: 有考虑出其他曲线, etc 酒的曲线吗?

- olive: 声学和酒很像, 酒类研究也会找测试者, 研究化学成分, 打分etc, 哈曼公司里也有人认为"音箱应该像酒", 需要有"味道"
- olive认为音箱的目的是"参考", 还原才是第一, 而不是人造的"味道", 
- 酒是艺术, 要有味道; olive认为音箱是酒杯, 音乐才是酒; 音乐是艺术 而音箱只是媒介所以要中性

.

## (闲聊时间)

右上: 有人研究清洗酒杯的清洁剂(气味)会影响酒的评价, 

olive: 核磁共振显示价格会真的让酒更好喝, 音乐来说脑放也真的有效

左上: 经济学里叫Vebelin Effect

.

关于测试参与者:

- 评测者的评价, 和测量的对应区域看起来没有correlation
- 换句话说评测者说的描述和频响没什么关系, 也没有控制变量, 所以参考性较低
- 频响测量本身也会影响主观听感, 最好的还是不看频响去盲听, DUNU以前做过这种测试

.



## 回答问题环节

[image-20211014025902571](C:\Users\Andre\AppData\Roaming\Typora\typora-user-images\image-20211014025902571.png)

如何评价中国/淘宝产的便宜711, 耳廊(pinna)更紧:

- olive: 不熟, 如果满足spec, 问题就是稳定性
- 在不同温湿度下要保持稳定和精确 
- 国产的pinna更硬了, olive认为可能会有影响，比如说泄露   

.

如何评价音特美 target:

- olive: 合作的er1当时是双耳录音最准确的耳机, 后来理念逐渐不同(音特美低频平直)
- 音特美计算accuracy的方式是来自音箱的consumer ratings, 可能不能直接用在耳机上
- 音特美有研究说为音箱定制的音乐的高频会更多, 所以音特美会生产高频更少的音箱作为补偿
- (音箱定制的音乐)就是普通的音乐, 大部分都是在室内用音箱监听的
- 之前Killion给了他(Olive)一些耳机让他帮忙收集数据研究听众是否需要更多的低频
- 新版本音特美在逐渐增加bass, 做出改变

```
(其他补充)
主持人认为耳机的grain和频响的peak等有关
他们讨论了HD800被很多人认为更具空间感的原因，
olive说有很多人认为开放式耳机比封闭式更具空间感，但这是个personal thing，他没有做过这方面的研究
主持人说Stealth是他听过的最open back的封闭式耳机
主持人认为是因为stealth没有很多封闭式耳机会有的谐振峰，所以听起来更像open back
oratory1990被开盒了, mad economist说了oratory1990的名字, 但没说last name
（虽然能推断出来）
Usound一共没几个工程师, 对headphone target有研究的就更少了
oratory1990曾经对mad economist说自己推测HD800耳罩和pinna周围的接触区域是让HD800 more airy的原因之一
```

.

耳机的声场vs音箱?

- olive: 我听什么耳机都在头里, 还得用音箱;
- 数字计算创作3d音频, 头部追踪, 耳朵个性化HRTF, etc 可能是未来
- olive: 声场可能和1.5k (1-2k)的频响更多有关? maybe, 这是从asr上听来的说法

.

Q: 很多人说听感"千人千耳", 年龄, 佩戴, 耳道结构etc里, 最大的变量是? 一些人会说自己戴耳机会 听到几khz有峰, 为什么?

- 耳朵形状影响coupling和seal (低频)
- pinna interaction影响空间感 (中高频)
- 年龄
- 耳道的形状和volume影响共振峰位置
- 总的来说数据不足, 没有足够研究

.

Q: 耳机最佳的价格区间? 提到论文"lack of correlation between price and sound quality"

- olive: 两三百刀选择很多, 再往上选择更少好产品也更少
- 但也不是说高价就不好, 黑暗时代已经过去, 现在高价耳机里会比五年前有更多好东西, 比如Stealth

.

Q: 如何评价只看数据评价耳机的人? 是否应该先听再测, 还是测完直接评价

- olive: 自己测量的时候都是先听再看测量, 否则听的时候会带有expectation
- 网上的测量未必准确, 测量时的环境也会影响测量; toy measurements不可靠, 需要准确信息源
- 大部分大耳测量都在中号头完成, 现在测量需要更多头型

.

Q: 平时听什么音乐? 通常会用什么音乐作为reference point?

- olive: 听最多的是classical和爵士, 不听country, 听一点点rap
- rap对自己来说只是测试音, 不会主动去听

.

Q: 哈曼预测分数里, 可闻的差距是多少分?

- avg. rms (average root mean square)是5-6分

.

Q: 现在在做什么?

- olive: 空间音频, 数字音频未来会大发展

---



// 两个半小时直播到此结束 

// 这一点图都没有的破文亏你能看到最后

最后再次感谢失望佬给的意见, 原先版本里面很多问题我自己肯定是找不出来的, 嘭嘭嘭, nb 

之前在群里提过不希望直接提他的名字, 因为要对说的话负责, 但处于私心我还是想提一下的. 这部分就放在自己博客里了. 知乎里会删掉这部分.

能点进这里看到内容, 大概也不会是老烧界/鬼斧神工派的怪人吧.

这个话题相关我了解的还是比较少, 可以去看他在知乎写的不少内容 → [失望 - 知乎 (zhihu.com)](https://www.zhihu.com/people/shi-wang-31-73)


关于博客里更多音频相关内容: 可以看[音乐](https://q.noos.ca/tags/音乐/) tag下的回答

那么有缘再见吧w