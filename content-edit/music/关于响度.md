---
title: "关于响度"
tags:
- 笔记
- 音乐
---
知乎:  https://zhuanlan.zhihu.com/p/397207071

dB SPL: sound pressure level, 简写成dB

#### SPL
SPL: sound pressure level, 声压级, 指环境压力和声压之间的差
单位是帕斯卡(Pa), 一般会转换成dB
一般会认为每3dB声音*能量*翻倍, 而由于人耳对响度的感知并不是线性关系, 所以一般需要10dB来让实际听到的*感知响度*(perceived loudness)翻倍, 具体可以看[这篇](http://www.sengpielaudio.com/calculator-levelchange.htm)
![[image20210807022435.png]]
这图坐标轴有点鬼畜
```
Double or twice the loudness = factor 2 means about 10 dB more sensed loudness level (psycho acoustic)  # 估测值
Double or twice the voltage = factor 2 means **6 dB** more measured voltage level (sound pressure level) 
Double or twice the power = factor 2 means 3 dB more calculated power level (sound intensity level)
# 每10dB, 声音能量(energy)增加10倍, 感知响度(perceived loudness)增加2倍
```
美国对工作环境响度的限制: 一般工作噪音超过85dB就建议带听力保护
![[image20210807023114.png]]

#### RMS
dB RMS: decibel root mean square, 一种计算响度的方法, 直接取时间上平均值, 但会被无声停顿拉低数值, 简称RMS
有些音乐公司喜欢用混音-12RMS, 母带-8 RMS当标准

#### LUFS
响度来自于声波的能量; 同一个声音的持续时间越长, 听起来"越响"; 500ms的声音听起来比5ms的声音更响
LUFS: loudness units relative to full scale, 和欧盟LKFS是同一个东西的不同称呼
- 考虑到了无声停顿, 超过400ms的停顿会被忽略
- LKFS中的K, 意思是使用K-weighting: 更符合人感知响度(perceived loudness)的算法; 人耳对不同频率相同dB的声音感觉到的响度也不同; 比如人老了能听到的高频信号会越来越少

一般广播公司都会有一个LUFS标准; 比如美国是-23LKFS(LUFS), 比这个更响要被罚款
spotify和youtube的标准是-14LUFS, 比广播更响; apple music是-16LUFS
spotify会把比这个值音量低的全都拉到这个值, 但youtube只会把超过的降到-14LUFS
![[image20210807013048.png]]
youtube: -3dB from -14LUFS target; 1dB=1LUFS; 所以当前响度是-17LUFS

-14LUFS适合流行音乐, 电台节目想要更多人声质感往往调到-16LUFS, 监听环境一般用-18LUFS -1dBTP

#### dBTP
两个连续的音频信号经过dac时可能会产生一个比两者更响的声音, 这种现象叫做inter-sample peak
![[image20210807015316.png]]

dbTP: decibel true peak, 考虑到上面情况时的响度算法
一般推荐音乐不要比-1 dBTP更响

#### dB(A) / dB(C)
两种用来描述音乐响度的方式;适用不同情况, 分别对应A-weighted 和 C-weighted算法
dBA: 在低音量下更准确, 但是没考虑到低频情况
dBC: 加权更平均

[Sound measuring - sengpielaudio](http://www.sengpielaudio.com/calculator-dba-spl.htm)
[dBA vs. dBC - Live Sound Fundamentals from The Production Academy](https://www.youtube.com/watch?v=UJxVDYXaFzs)
![[image20210807024147.png]]

工业环境的噪声规范一般都用dBC标准
现代专辑等低音往往都很多所以也是用dBC标准校准, 音箱不要超过85dBC SPL;校准在80dB左右比较好, 也可以适当调更低

#### 总结
音乐文件:-18LUFS, -1dBTP
器材: 80dBC SPL
大胆调, 反正即使是交响乐, 母带的时候也多半都会调一调各个乐器的响度, 控制总音量, 顺便加点混响什么的; 更别说各种流行音乐往死里加响度了


#### 相关链接
[关于响度的拾遗, 张禹,  Audiokinetic](https://blog.audiokinetic.com/zh/about-loudness/)
[Volume vs Loudness - LUFS & LKFS for Measuring Loudness for Video](https://www.youtube.com/watch?v=nOzZKEWJ5wk)
[Sound measuring - sengpielaudio](http://www.sengpielaudio.com/calculator-dba-spl.htm)
[True peak: why your songs should never peak above -1 dBTP](https://www.mixinglessons.com/dbtp-decibel-true-peak/)
[Avoiding inter sample peaks - hometracked]( https://www.hometracked.com/2007/11/08/prevent-intersample-peaks/)
[Best reference for classical loudness? - gearspace](https://gearspace.com/board/remote-possibilities-in-location-recording-amp-production/1058823-best-reference-classical-loudness.html)
