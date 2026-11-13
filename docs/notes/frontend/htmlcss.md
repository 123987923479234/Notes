# HTML / CSS 速查

写页面之前，先把「文档流」和「盒子」想清楚，剩下的多半是查属性。

## 一个最小的语义结构

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>页面标题</title>
</head>
<body>
  <header>页头</header>
  <nav>导航</nav>
  <main>
    <article>正文</article>
    <aside>侧栏</aside>
  </main>
  <footer>页脚</footer>
</body>
</html>
```

## Flex：一维布局

```css
.toolbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
}

.toolbar .spacer { margin-left: auto; }
```

常用主轴属性：

| 属性 | 作用 |
| --- | --- |
| `justify-content` | 主轴对齐 |
| `align-items` | 交叉轴对齐 |
| `flex-wrap` | 是否换行 |
| `gap` | 子项间距 |
| `flex: 1` | 占满剩余空间 |

## Grid：二维布局

```css
.layout {
  display: grid;
  grid-template-columns: 240px minmax(0, 1fr) 220px;
  gap: 32px;
  align-items: start;
}
```

`minmax(0, 1fr)` 很重要：它允许中间列收缩到 0，避免长代码块把网格撑破。

## CSS 变量与主题

```css
:root {
  --bg: #000;
  --text: #fff;
  --primary: #0ecaf0;
}

:root[data-theme="light"] {
  --bg: #fff;
  --text: #172024;
}

body {
  background: var(--bg);
  color: var(--text);
}

a { color: var(--primary); }
```

切换主题时只改 `data-theme`，所有引用变量的地方一起变。

## 响应式

移动优先写法：

```css
.layout { display: block; }

@media (min-width: 1000px) {
  .layout {
    display: grid;
    grid-template-columns: 240px minmax(0, 1fr) 220px;
  }
}
```

!!! tip "断点怎么选"
    不要照抄别人的断点。把浏览器窗口从宽拖到窄，看你的布局在哪一刻开始难看，那一刻就是断点。

## 几个容易忘的点

- `box-sizing: border-box` 让 padding 不再撑大宽度；
- `position: sticky` 需要祖先没有 `overflow: hidden`；
- `z-index` 只在定位元素上生效；
- 中文排版记得设置 `line-height` 和 `letter-spacing`；
- 图片默认是 inline 元素，底部会有空隙，可以设 `display: block`。

> 写 CSS 的乐趣在于：同一个视觉结果往往有五种写法，选那个以后还能看懂的。
