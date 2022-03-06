---
title: "hotswap"
tags:
- VRChat
- Rip
---

> 2022.03.06 这篇曾经发于知乎被举报删除, 现在修订后重新发布.

Hotswap, 一般用来指软件运行中改变它行为. 

在VRChat里, hotswap指事先准备好模型包, 在上传的时候替换掉unity里生成的包, 来达到上传任意模型的结果.

Hotswap不像解包需要花时间修复脚本等, 只要能拿到和服务器一致的模型包(.vrca), 就可以原样上传上去. 

缺点是如果想改的话还是得解包了自己修复.

## 获取模型包

用来hotswap的模型包一般以.vrca结尾; 以其中一种hotswap方式为例:

### (一) 从缓存提取

去vrchat的缓存目录, 默认是 `%AppData%\..\LocalLow\VRChat\vrchat`

里面有一个叫做`Cache-WindowsPlayer` 的文件夹, 里面是你下载的其他人模型/地图的缓存, 大概长这样:
![[Pasted image 20220306071013.png]]

每个目录代表一个模型或地图的文件, 点进去有两个子文件, 分别叫`__data`和`__info`;

其中`__data` 就是想要解包的目标文件, 里面是换了格式的`.vrca` / `.vrcw` 文件, 包含一个模型/地图的所有组成部分.

比较新的缓存文件没法直接用来hotswap, 但是可以用[Asset Ripper](https://link.zhihu.com/?target=https%3A//github.com/ds5678/AssetRipper) 解包后获取[[avatar id]], 从官方服务器获取能hotswap的原包

旧文件(avatar 2.0)有些可以直接用来hotswap


### (二) 获取avatar id & 下载
用[Asset Ripper](https://link.zhihu.com/?target=https%3A//github.com/ds5678/AssetRipper) 解包, 然后打开vscode, 在解包的文件夹里搜索`avtr_`, 不出意外一般能找到. 
avtr_xxxx_xxxx_xxx的就是avatar id.

没有的话也可以试试用 [Notepad++ ](https://notepad-plus-plus.org/downloads/)以二进制格式打开, 然后再搜索

拿到avatar id以后去[ripper store](https://ripper.store/id-downloader),这个工具可以直接输入id 从vrchat的官方下载原包.

然后你会拿到一个格式是`.vrca`的文件, 下一步拿来hotswap, 替换掉一个空白模型上传 



## Hotswap
在Unity里新建任意一个3d形状, 直接加上SDK要求的`avatarDescriptor`和`Animator`模块, 点击上传:

对上传模型不熟的可以看→ [[上传模型]]

![[Pasted image 20220306073259.png]]

填好信息, 点击Build&Upload, 生成Blueprint ID:
![[Pasted image 20220306073314.png]]

生成的blueprint ID可以在pipeline manager看到:
![[Pasted image 20220306073329.png]]

此时unity里会停在让你填写名字和简介, 以及上传照片的地方;

使用[AssetsBundleExtractor](https://link.zhihu.com/?target=https%3A//github.com/DerPopo/UABE/releases)解压之前获取的.vrca文件:

![[Pasted image 20220306073342.png]]

打开notepad++, 查找替换掉里面的 `avtr_xxxx_xxx`为unity里新的blueprint id
![[Pasted image 20220306073426.png]]

保存后再次使用Assets Bundle Etractor, 用compress功能重新打包成vrca文件, 命名为`custom.vrca`

![[Pasted image 20220306073450.png]]

打开C盘`AppData\Local\Temp\DefaultCompany\项目名`, 用新的custom.vrca替换掉同名文件, 再在unity里点击上传, hotswap完成.

过一段时间打开vrchat官网, 看到自己的avatar列表里已经出现了偷来的新模型:
![[Pasted image 20220306073539.png]]

整套流程看上去麻烦, 但也有很多自动化上传的工具, 点几下鼠标你的模型就偷到手了, 甚至连获取缓存的步骤都不需要, 知道你的id就可以从VRChat 官方API下载所有你拥有和喜欢过的模型. 本人不提倡这种做法所以不做介绍.




### (三点五) 补充

现成.vrca商店里最有名的大概是[RipperStore Official.](https://ripper.store/index)   但其实还有很多其他的站, 只要是提供vrca的都差不多.

⚠️注意ripper store的相当一部分包有无法修复的脚本错误, 是采集的时候没搞好. 20换1也不是很划算. 不如自己获取缓存后解包直接拿.

⚠️有些钓鱼网站会在下载的包里带有自动执行的dll, 如果解包后导入unity就会自动上传, 收集你的cookie/ip/vrchat账号等信息. 之前有个公司叫akisoba, 建了个分发模型的钓鱼网站叫sanctuary.moe, 专门就干这事. 虽然现在被骂没了.



[[VRChat]]