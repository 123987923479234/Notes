# 傅里叶变换

傅里叶变换回答一个问题：**一个信号里，各个频率的成分各有多少？**

## 周期信号的傅里叶级数

三角形式：

$$
f(t) = a_0 + \sum_{n=1}^{\infty}\left(a_n\cos n\omega_0 t + b_n\sin n\omega_0 t\right)
$$

指数形式更常用：

$$
f(t) = \sum_{n=-\infty}^{\infty} F_n e^{jn\omega_0 t}
$$

其中

$$
F_n = \frac{1}{T}\int_{-T/2}^{T/2} f(t)e^{-jn\omega_0 t}\,\mathrm{d}t
$$

## 傅里叶变换

$$
F(\omega) = \int_{-\infty}^{\infty} f(t)e^{-j\omega t}\,\mathrm{d}t
$$

反变换：

$$
f(t) = \frac{1}{2\pi}\int_{-\infty}^{\infty} F(\omega)e^{j\omega t}\,\mathrm{d}\omega
$$

## 常用变换对

| 时域 $f(t)$ | 频域 $F(\omega)$ |
| --- | --- |
| $\delta(t)$ | $1$ |
| $1$ | $2\pi\delta(\omega)$ |
| $e^{-at}u(t)$ | $\dfrac{1}{a + j\omega}$ |
| $u(t)$ | $\pi\delta(\omega) + \dfrac{1}{j\omega}$ |
| $\cos\omega_0 t$ | $\pi[\delta(\omega-\omega_0) + \delta(\omega+\omega_0)]$ |
| 矩形脉冲 | 采样函数 $\mathrm{Sa}(\cdot)$ |

## 基本性质

| 性质 | 时域 | 频域 |
| --- | --- | --- |
| 线性 | $af_1 + bf_2$ | $aF_1 + bF_2$ |
| 时移 | $f(t - t_0)$ | $F(\omega)e^{-j\omega t_0}$ |
| 频移 | $f(t)e^{j\omega_0 t}$ | $F(\omega - \omega_0)$ |
| 尺度变换 | $f(at)$ | $\dfrac{1}{|a|}F\left(\dfrac{\omega}{a}\right)$ |
| 卷积 | $f_1 * f_2$ | $F_1\cdot F_2$ |
| 相乘 | $f_1\cdot f_2$ | $\dfrac{1}{2\pi}F_1 * F_2$ |

!!! note "卷积定理为什么重要"
    时域卷积对应频域相乘，意味着「系统对信号的响应」可以在频域里直接做乘法。滤波器的设计基本都建立在这条定理上。

## 采样定理

若信号最高频率为 $f_m$，则采样频率必须满足：

$$
f_s \ge 2f_m
$$

否则会发生频谱混叠，高频成分会被「折叠」到低频，无法还原。

!!! warning "混叠不是噪声"
    混叠后的信号看起来完全正常，但已经不是原来的信号了。这也是为什么采样前通常要先做抗混叠滤波。

## 一个例子：方波

周期方波只含奇次谐波：

$$
f(t) = \frac{4A}{\pi}\left(\sin\omega_0 t + \frac{1}{3}\sin 3\omega_0 t + \frac{1}{5}\sin 5\omega_0 t + \cdots\right)
$$

随着谐波项数增加，波形在跳变处会出现吉布斯现象：无论取多少项，过冲都不会完全消失。
