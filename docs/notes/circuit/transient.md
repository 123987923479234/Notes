# 暂态过程

电路从一个稳态换到另一个稳态，中间那段不能瞬间完成的过程，就是暂态。RC、RL 电路的一阶暂态都可以用同一套方法处理。

## 三要素法

对任何一阶电路，只要知道三个量：

1. 初始值 $f(0^+)$
2. 稳态值 $f(\infty)$
3. 时间常数 $\tau$

就能写出：

$$
f(t) = f(\infty) + \left[f(0^+) - f(\infty)\right]e^{-t/\tau}, \quad t \ge 0
$$

!!! tip "三步走"
    先用换路定则求 $f(0^+)$，再把电容开路 / 电感短路求 $f(\infty)$，最后从等效电阻算 $\tau$。三个量齐了，式子就出来了。

## 时间常数

RC 电路：

$$
\tau = RC
$$

RL 电路：

$$
\tau = \frac{L}{R}
$$

经过 $3\tau$ 到 $5\tau$，过程基本结束。

## RC 充电与放电

充电（电容初始为零）：

$$
u_C(t) = U\left(1 - e^{-t/RC}\right), \qquad
i_C(t) = \frac{U}{R}e^{-t/RC}
$$

放电：

$$
u_C(t) = U_0 e^{-t/RC}, \qquad
i_C(t) = -\frac{U_0}{R}e^{-t/RC}
$$

## RL 电路

通电：

$$
i_L(t) = \frac{U}{R}\left(1 - e^{-Rt/L}\right)
$$

断电时电感会试图维持电流，若没有续流回路，会产生很高的感应电动势：

$$
\mathcal{E}_L = -L\frac{\mathrm{d}i}{\mathrm{d}t}
$$

!!! danger "注意安全"
    断开大电感的瞬间，感应电动势可能远高于电源电压，这也是继电器、电机需要续流二极管的原因。

## 换路定则

- 电容电压不能突变：$u_C(0^+) = u_C(0^-)$
- 电感电流不能突变：$i_L(0^+) = i_L(0^-)$

其余变量可以突变。

## 例题

$R = 2\,\mathrm{k\Omega}$、$C = 1\,\mu\mathrm{F}$ 串联，接在 $U = 10\,\mathrm{V}$ 电源上，电容初始未充电。求 $t = 3\,\mathrm{ms}$ 时的电容电压。

$$
\tau = RC = 2\times10^3 \times 10^{-6} = 2\,\mathrm{ms}
$$

$$
u_C(3\,\mathrm{ms}) = 10\left(1 - e^{-3/2}\right) \approx 10(1 - 0.223) = 7.77\,\mathrm{V}
$$
