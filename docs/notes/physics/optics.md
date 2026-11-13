# 光学

光学可以分成三条线：**干涉**（几束光叠加）、**衍射**（波被边界限制）、**偏振**（横波的振动方向）。

## 双缝干涉

光程差与相位差：

$$
\delta = d\sin\theta, \qquad
\Delta\varphi = \frac{2\pi}{\lambda}\delta
$$

明暗条纹条件：

$$
\delta = k\lambda \ (\text{明}), \qquad
\delta = \left(k + \tfrac{1}{2}\right)\lambda \ (\text{暗})
$$

条纹间距：

$$
\Delta x = \frac{D}{d}\lambda
$$

!!! note "一个直觉"
    双缝间距 $d$ 越小、屏越远 $D$ 越大，条纹越宽。做实验时想看清条纹，就调小缝距。

## 薄膜干涉

等倾干涉的光程差：

$$
\delta = 2e\sqrt{n_2^2 - n_1^2\sin^2 i} + \frac{\lambda}{2}
$$

垂直入射时：

$$
\delta = 2ne + \frac{\lambda}{2}
$$

!!! warning "半波损失"
    光从光疏介质射向光密介质反射时会有 $\lambda/2$ 的相位突变，即半波损失。判断增反膜、增透膜时先数清楚反射发生在哪一侧。

## 单缝衍射

半波带法：

$$
a\sin\theta = \pm k\lambda \ (\text{暗纹}), \qquad
a\sin\theta = \pm\left(k + \tfrac{1}{2}\right)\lambda \ (\text{明纹})
$$

中央明纹半角宽度：

$$
\Delta\theta_0 = \frac{\lambda}{a}
$$

光强分布：

$$
\frac{I}{I_0} = \frac{\sin^2 u}{u^2}, \qquad
u = \frac{\pi a}{\lambda}\sin\theta
$$

## 光栅衍射

主极大条件：

$$
d\sin\theta = \pm k\lambda, \quad k = 0,1,2,\dots
$$

缺级条件：

$$
\frac{d}{a} = \frac{k}{k'}
$$

光栅分辨本领：

$$
R = \frac{\lambda}{\Delta\lambda} = kN
$$

## 偏振

马吕斯定律：

$$
I = I_0\cos^2\alpha
$$

布儒斯特定律：

$$
\tan i_0 = \frac{n_2}{n_1}
$$

波晶片的光程差与相位差：

$$
\delta = |n_o - n_e|d, \qquad
\Delta\varphi = \frac{2\pi}{\lambda}|n_o - n_e|d
$$

!!! tip "四分之一波片"
    当 $\delta = \lambda/4$ 时，线偏振光通过波晶片后变成圆偏振光；当 $\delta = \lambda/2$ 时，偏振方向会转过 $2\alpha$。

## 三种现象对比

| 现象 | 本质 | 关键词 |
| --- | --- | --- |
| 干涉 | 两束相干光叠加 | 相干性、光程差 |
| 衍射 | 波绕过障碍物 | 半波带、中央明纹 |
| 偏振 | 横波振动方向的选择 | 马吕斯、布儒斯特角 |
