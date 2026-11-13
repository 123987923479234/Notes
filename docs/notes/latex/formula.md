# LaTeX 公式速查

MathJax 支持的写法，基本就是 LaTeX 数学模式的子集。这份表覆盖日常够用的部分。

## 上下标与分式

| 写法 | 效果 |
| --- | --- |
| `x^2`、`x_i` | $x^2$、$x_i$ |
| `x^{2n}`、`x_{i+1}` | $x^{2n}$、$x_{i+1}$ |
| `\frac{a}{b}` | $\frac{a}{b}$ |
| `\dfrac{a}{b}` | $\dfrac{a}{b}$（行内也保持大号） |
| `\sqrt{x}`、`\sqrt[3]{x}` | $\sqrt{x}$、$\sqrt[3]{x}$ |

## 常用符号

| 含义 | 写法 | 效果 |
| --- | --- | --- |
| 希腊字母 | `\alpha \beta \gamma \pi \omega` | $\alpha\ \beta\ \gamma\ \pi\ \omega$ |
| 求和 | `\sum_{i=1}^{n}` | $\sum_{i=1}^{n}$ |
| 积分 | `\int_a^b` | $\int_a^b$ |
| 极限 | `\lim_{x\to 0}` | $\lim_{x\to 0}$ |
| 无穷 | `\infty` | $\infty$ |
| 偏导 | `\frac{\partial f}{\partial x}` | $\frac{\partial f}{\partial x}$ |
| 梯度 | `\nabla U` | $\nabla U$ |
| 矢量 | `\vec{E}` | $\vec{E}$ |
| 约等于 | `\approx` | $\approx$ |
| 不等于 | `\neq` | $\neq$ |
| 小于等于 | `\le` | $\le$ |
| 属于 | `\in` | $\in$ |
| 任意 | `\forall` | $\forall$ |

## 矩阵与分段

矩阵：

$$
\begin{pmatrix}
a & b \\
c & d
\end{pmatrix}
$$

分段函数：

$$
f(x) = \begin{cases}
x^2, & x \ge 0 \\
-x, & x < 0
\end{cases}
$$

## 多行对齐

$$
\begin{aligned}
(a+b)^2 &= a^2 + 2ab + b^2 \\
(a-b)^2 &= a^2 - 2ab + b^2
\end{aligned}
$$

## 几个排版细节

!!! tip "行内公式不要太高"
    行内用 `\frac` 会撑高行距，改用 `\tfrac` 或直接写 `a/b` 更舒服。展示公式才用 `\dfrac`。

- 公式里的中文要用 `\text{中文}` 包起来；
- 多字母变量用 `\mathrm{d}x` 表示微分算子 d；
- 单位建议写成 `\ \mathrm{m/s}`，前面留一个窄空格；
- 不要用 `*` 表示乘号，写 `\times` 或 `\cdot`。

> 公式是给人读的，不是给编译器看的。该加空格的地方加空格。
