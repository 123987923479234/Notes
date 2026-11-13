# 电磁学

从库仑定律到麦克斯韦方程组，电磁学的主线其实只有一句话：**电荷产生场，变化的场又产生场**。

## 静电场

库仑定律是起点：

$$
\vec{F}_{12} = \frac{1}{4\pi\varepsilon_0}\frac{q_1 q_2}{r^2}\hat{r}_{12}
$$

电场强度定义为单位正电荷受力：

$$
\vec{E} = \frac{\vec{F}}{q_0}, \qquad
U_P = \int_P^{\infty} \vec{E}\cdot \mathrm{d}\vec{l}
$$

!!! note "电势与场强的关系"
    电场是电势的负梯度：$\vec{E} = -\nabla U$。一维情形下就是 $E = -\dfrac{\mathrm{d}U}{\mathrm{d}x}$，方向永远指向电势降低最快的方向。

## 高斯定理

真空中：

$$
\oint_S \vec{E}\cdot \mathrm{d}\vec{S} = \frac{1}{\varepsilon_0}\sum q_{\text{内}}
$$

有介质时换成电位移矢量：

$$
\oint_S \vec{D}\cdot \mathrm{d}\vec{S} = \sum q_0, \qquad \vec{D} = \varepsilon_0\vec{E} + \vec{P} = \varepsilon_r\varepsilon_0\vec{E}
$$

几种典型带电体的场强：

| 带电体 | 场强 | 说明 |
| --- | --- | --- |
| 点电荷 | $\dfrac{1}{4\pi\varepsilon_0}\dfrac{q}{r^2}$ | 沿径向 |
| 无限长带电直线 | $\dfrac{\lambda}{2\pi\varepsilon_0 r}$ | 与距离成反比 |
| 无限大带电平面 | $\dfrac{\sigma}{2\varepsilon_0}$ | 与距离无关 |
| 均匀带电球壳（外部） | $\dfrac{1}{4\pi\varepsilon_0}\dfrac{Q}{r^2}$ | 等效于点电荷 |
| 均匀带电球壳（内部） | $0$ | 高斯面内无电荷 |

## 电容与电场能量

$$
C = \frac{Q}{U}, \qquad
C_{\text{平行板}} = \frac{\varepsilon_0 S}{d}, \qquad
W = \frac{1}{2}\frac{Q^2}{C} = \frac{1}{2}CU^2
$$

电场能量密度：

$$
\omega_e = \frac{1}{2}\vec{D}\cdot\vec{E} = \frac{1}{2}\varepsilon E^2
$$

## 恒定磁场

毕奥—萨伐尔定律：

$$
\mathrm{d}\vec{B} = \frac{\mu_0}{4\pi}\frac{I\,\mathrm{d}\vec{l}\times\vec{r}}{r^3}
$$

安培环路定理（真空）：

$$
\oint_L \vec{B}\cdot \mathrm{d}\vec{l} = \mu_0\sum I_{\text{内}}
$$

介质中：

$$
\oint_L \vec{H}\cdot \mathrm{d}\vec{l} = \sum I_0, \qquad \vec{B} = \mu_0(\vec{H} + \vec{M})
$$

!!! warning "方向别搞反"
    安培环路定理中的电流方向由环路绕行方向按右手螺旋确定；遇到反向电流要带负号。这是最容易丢分的地方。

## 电磁感应

$$
\mathcal{E} = -\frac{\mathrm{d}\Phi}{\mathrm{d}t}, \qquad
\Phi = \iint_S \vec{B}\cdot \mathrm{d}\vec{S}
$$

动生电动势：

$$
\mathcal{E} = \int_L (\vec{v}\times\vec{B})\cdot \mathrm{d}\vec{l}
$$

自感与互感：

$$
\mathcal{E}_L = -L\frac{\mathrm{d}I}{\mathrm{d}t}, \qquad
\mathcal{E}_{21} = -M\frac{\mathrm{d}I_1}{\mathrm{d}t}, \qquad
M = k\sqrt{L_1L_2}
$$

## 麦克斯韦方程组

| 形式 | 方程 | 含义 |
| --- | --- | --- |
| 积分 | $\oint_S \vec{D}\cdot\mathrm{d}\vec{S} = \sum q$ | 电荷产生电场 |
| 积分 | $\oint_L \vec{E}\cdot\mathrm{d}\vec{l} = -\iint_S \dfrac{\partial\vec{B}}{\partial t}\cdot\mathrm{d}\vec{S}$ | 变化的磁场产生电场 |
| 积分 | $\oint_S \vec{B}\cdot\mathrm{d}\vec{S} = 0$ | 磁场无源 |
| 积分 | $\oint_L \vec{H}\cdot\mathrm{d}\vec{l} = \sum I + \iint_S \dfrac{\partial\vec{D}}{\partial t}\cdot\mathrm{d}\vec{S}$ | 电流和变化的电场产生磁场 |

微分形式更紧凑：

$$
\nabla\cdot\vec{D} = \rho, \quad
\nabla\times\vec{E} = -\frac{\partial\vec{B}}{\partial t}, \quad
\nabla\cdot\vec{B} = 0, \quad
\nabla\times\vec{H} = \vec{j} + \frac{\partial\vec{D}}{\partial t}
$$

## 易错点清单

- [x] 高斯定理只关心面内电荷，但场强由所有电荷共同决定。
- [x] 电势零点可以任选，电势差与零点无关。
- [ ] 静电平衡导体内场强为零，表面场强为 $\sigma/\varepsilon_0$。
- [ ] 位移电流不是电荷的定向移动，但同样产生磁场。

> 公式表只能帮你快速回忆，真正的理解来自「给定边界条件，把场算出来」。
