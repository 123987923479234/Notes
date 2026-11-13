# 量子物理

量子力学不是「经典力学加一点修正」，而是换了一套描述世界的方式：**状态是波函数，可观测量是算符，测量结果是概率**。

## 黑体辐射

斯忒藩—玻尔兹曼定律与维恩位移定律：

$$
M_B(T) = \sigma T^4, \qquad
T\lambda_m = b
$$

其中 $\sigma = 5.67\times10^{-8}\ \mathrm{W/(m^2\cdot K^4)}$，$b = 2.898\times10^{-3}\ \mathrm{m\cdot K}$。

普朗克公式：

$$
M_{B\lambda}(T) = \frac{2\pi hc^2}{\lambda^5}\frac{1}{e^{hc/(\lambda kT)} - 1}
$$

## 光电效应

爱因斯坦光电方程：

$$
h\nu = E_{km} + A = \frac{1}{2}mv_m^2 + A
$$

红限频率：

$$
\nu_0 = \frac{A}{h}
$$

!!! tip "三条结论"
    1. 光强决定光电子数目，不决定最大初动能；
    2. 频率决定最大初动能；
    3. 存在红限频率，低于它无论光多强都没有光电子。

## 康普顿散射

$$
\Delta\lambda = \lambda - \lambda_0 = \frac{h}{m_0c}(1 - \cos\varphi)
$$

其中 $\dfrac{h}{m_0c} = 2.43\times10^{-12}\ \mathrm{m}$，称为康普顿波长。

## 德布罗意波与不确定关系

$$
\lambda = \frac{h}{p}, \qquad
\Delta x\,\Delta p_x \ge \frac{\hbar}{2}, \qquad
\Delta E\,\Delta t \ge \frac{\hbar}{2}
$$

## 无限深势阱

宽度为 $a$ 的一维无限深势阱：

$$
\psi_n(x) = \sqrt{\frac{2}{a}}\sin\frac{n\pi x}{a}, \qquad
E_n = n^2\frac{h^2}{8ma^2}, \quad n = 1,2,3,\dots
$$

零点能：

$$
E_1 = \frac{h^2}{8ma^2}
$$

!!! example "算一算"
    电子被限制在 $a = 10^{-10}\ \mathrm{m}$ 的一维势阱中，求基态能量。

    $$
    E_1 = \frac{(6.63\times10^{-34})^2}{8\times9.11\times10^{-31}\times(10^{-10})^2}
        \approx 6.0\times10^{-18}\ \mathrm{J} \approx 37.7\ \mathrm{eV}
    $$

    这个量级和氢原子基态能量（$-13.6\ \mathrm{eV}$）相近，说明势阱宽度约为原子尺度时，量子效应不能忽略。

## 氢原子

玻尔模型给出的能级：

$$
E_n = -\frac{13.6}{n^2}\ \mathrm{eV}, \qquad
r_n = n^2 a_0, \quad a_0 = 0.529\ \text{Å}
$$

量子数小结：

| 量子数 | 符号 | 取值 | 决定 |
| --- | --- | --- | --- |
| 主量子数 | $n$ | $1,2,3,\dots$ | 能级、壳层 |
| 角量子数 | $l$ | $0,1,\dots,n-1$ | 角动量大小 |
| 磁量子数 | $m_l$ | $0,\pm1,\dots,\pm l$ | 角动量取向 |
| 自旋磁量子数 | $m_s$ | $\pm\frac{1}{2}$ | 自旋取向 |

> 一个壳层最多容纳 $2n^2$ 个电子——这是元素周期表结构的来源之一。
