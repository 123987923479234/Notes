# 原站技术栈解析

参考站是 `skyeye-2025.github.io/Home`，一个课程笔记站。它的「左边分类栏目 + 右侧本页目录 + 黑底青色」效果，并不是手写 HTML 做出来的，而是 **MkDocs + Material for MkDocs** 的默认结构，加上一套自定义配色。

## 一眼看出来

打开页面源代码，可以直接看到生成器标记：

```html
<meta name="generator" content="mkdocs-1.6.1, mkdocs-material-9.7.7">
```

再结合它仓库根目录的 `mkdocs.yml`，整套结构就清楚了。

## 组成部分

| 层 | 做了什么 | 证据 |
| --- | --- | --- |
| 生成器 | MkDocs 把 Markdown 编译成静态 HTML | `<meta name="generator">` |
| 主题 | Material for MkDocs 提供顶栏、Tabs、左导航、右目录、搜索 | `assets/stylesheets/main.*.css` |
| 栏目结构 | `mkdocs.yml` 的 `nav:` 嵌套列表 | 左侧三层折叠菜单 |
| 配色 | `extra.css` 里自定义 `[data-md-color-scheme=skyeye]` 变量 | 纯黑背景、青色标题 |
| 字体 | 字体 API 的 ZSFT-344 / 未来圆SC | `@font-face` + `body` |
| 公式 | MathJax 3.2.2 + `pymdownx.arithmatex` | `unpkg.com/mathjax` 脚本 |
| 搜索 | Material 内置离线搜索 | 顶部搜索框 |
| 访问量 | 不蒜子（busuanzi）统计脚本 | `cdn.busuanzi.cc` |
| 部署 | GitHub Pages | `*.github.io` 域名 |

## 关键配置长什么样

`mkdocs.yml` 的核心部分大致是：

```yaml
theme:
  name: material
  language: zh
  font: false
  palette:
    scheme: skyeye        # 自定义方案，在 extra.css 里定义
  features:
    - navigation.tabs
    - navigation.expand
    - navigation.top
    - navigation.indexes
    - search.suggest
    - search.highlight
    - content.code.copy

markdown_extensions:
  - admonition
  - pymdownx.arithmatex:
      generic: true
  - pymdownx.superfences:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:pymdownx.superfences.fence_code_format
  - pymdownx.tabbed:
      alternate_style: true
  - pymdownx.tasklist:
      custom_checkbox: true
  - toc:
      permalink: true
```

配色部分则是覆盖 Material 的 CSS 变量：

```css
[data-md-color-scheme="skyeye"] {
  --md-primary-fg-color: rgb(14, 202, 240);
  --md-default-bg-color: black;
  --md-typeset-color: white;
  --md-typeset-a-color: rgb(14, 202, 240);
  --md-default-fg-color--light: rgb(14, 202, 240);
}
```

!!! note "为什么看起来那么整齐"
    Material 主题本身就把「顶栏 / Tabs / 左导航 / 正文 / 右目录」这一套布局写好了，`navigation.tabs` 打开顶部栏目，`navigation.expand` 让左侧分类默认全展开。内容作者只需要维护 Markdown 和 `nav`。

## 这个站是怎么复刻的

本站用了**同样的版本组合**：

- MkDocs 1.6.1
- Material for MkDocs 9.7.7
- 同一个 `skyeye` 配色变量
- 同一个 MathJax 版本
- 同样的 `nav` 嵌套方式

不同的地方只有：

1. 内容全部换成了示例笔记，可以自由替换；
2. 没有接入不蒜子访问统计和打字机脚本；
3. 依赖已经放进项目里，离线也能构建。

## 一个页面是怎么变成网页的

```text
docs/notes/physics/em.md
        │  Markdown + 扩展语法
        ▼
   MkDocs（Python）
        │  套用 Material 模板
        ▼
site/notes/physics/em/index.html
        │  GitHub Pages / 任意静态托管
        ▼
   浏览器访客
```

所以「改内容」这件事，本质上只是改一个 `.md` 文件，然后在 `mkdocs.yml` 的 `nav:` 里告诉它放在哪个分类下。
