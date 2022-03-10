---

title: "Unity 场景光照小结"

tags:

- 教程

- 光照

- Unity

---



之所以算作教程而不是笔记, 还是因为自己其实没做什么想法, 主要全是来自各种教程. 包括自己想法的部分才会被算作笔记.



相关: [blender-lighting](blender/blender-lighting.md)



## Emission:

![image20220309233811.png](assets/image20220309233811.png)

材质发光作为光源的效果, 相比点光源更加柔和; ->原理见 [lighting](notes/lighting.md)

- 新建材料, 用default就行

- 点Emission, 设置强度

- 对于导入的mesh, 要下面资源管理器点中, 然后inspector选择allow generate UV







## Baked Lightmap:



1. 发光物体和要baked的物体, 都inspector右上角设置成static

2. 关闭 "realtime GI", 选择GPU渲染

3. done



如果没bake上去, 检查:

1. 是否存在能被bake的面 (而不是透明)

2. 是否被inverse vertices, 内向外外向内等

3. 试试用proBuilder创建方块, 看能不能bake上去





## 后处理:



用后处理进一步优化光照; 见[unity-postfx](unity/unity-postfx.md)



放张图:

![image20220310001105.png](assets/image20220310001105.png)





## 相关



[LIGHTING in Unity - YouTube](https://www.youtube.com/watch?v=VnG2gOKV9dw&t=17s)



[Post Processing · s-ilent · GitLab](https://gitlab.com/s-ilent/SCSS/-/wikis/Other/Post-Processing)





---



[unity](unity/unity.md)

