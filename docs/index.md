---
title: 首页
description: 简记，一个可以自由填充的个人笔记站。
---
# 简记

> 把学到的东西，留下来。

这是一个用 **MkDocs + Material for MkDocs** 搭建的个人笔记站：左侧是按学科和主题分类的栏目，右侧是本页目录，顶部是栏目切换。所有内容都是 `docs/` 下的 Markdown 文件，改完保存即可，预览页面会自动刷新。

!!! tip "先试试这些操作"
    - 左侧栏目可以展开、收起，点栏目名进入该栏目的第一篇笔记。
    - 点右上角放大镜或按 ++ctrl+k++ 打开搜索，试试搜「傅里叶」。
    - 每段代码右上角都有复制按钮。
    - 页面右侧的目录会跟随滚动高亮。

## 从这里开始

- [电磁学：从库仑定律到麦克斯韦方程组](notes/physics/em.md)
- [傅里叶变换：从级数到变换](notes/signals/fourier.md)
- [暂态过程：三要素法](notes/circuit/transient.md)
- [记忆与学习：为什么复习要隔开](notes/psychology/memory.md)

## 最近在写

1. [量子物理：光的粒子性](notes/physics/quantum.md)
2. [Git 常用命令](notes/tools/git.md)
3. [原站技术栈解析](projects/site-stack.md)

## 本站结构

| 目录 | 放什么 | 举例 |
| --- | --- | --- |
| `docs/notes/` | 各科笔记 | 物理、电路、信号、心理 |
| `docs/projects/` | 项目与建站记录 | 技术栈、改站日志 |
| `docs/notes/misc/` | 杂项 | 阅读摘录、常用链接 |

## 一个公式

质能方程大家都见过：

$$
E = mc^2
$$

行内公式也可以写，比如欧拉公式 $e^{i\pi} + 1 = 0$。

---

如果不知道从哪开始，就去读 [关于本站](about.md)，那里写了整个站是怎么长出来的。
