---
title: "blender: 从mesh烘焙heightmap的正确方法"
tags:
- 教程
- Blender
---

## 步骤

大概的工作流是这样的:
- 创建高面数模型
- 创建一个平面为主的低面数模型
- 把高面数模型bake成height map (也就是normal map)
- 在低面数模型上应用height map, 达到低模仿真高模的效果

  

## 导出heightmap:

1.  (引擎用eevee)
2.  删除材料, 选择geometry-position, 选择parateXYZ(Z), 选择math(multiply),
3.  用math(exceeds)检查区间超过, 调整multiply防止越界
4.  Render mode - filmic换为standard
5.  Render - film - transparent打开, 导出height map
6.  Scene - 导出格式: OpenEXR (为了linear space)
	1.  不要用PNG / JPEG
	2.  RGB就够了, 高度为0的是纯黑
	3.  选择32bit更好
![[image20220307114347.png]]

## 使用heightmap: 

如果当做displacement map(而不是bump map, 这样新建一个modifier)

1.  新建一个modifier (subdivision surface)
2.  目标材质(比如一个plane): 新建displacement node -> image,

1.  连接到displacement
2.  Midlevel-0, scale减少

4.  减少Dicing可以提高精度
5.  用texture coord / mapping调整位置

![[image20220307114427.png]]

[[blender]]