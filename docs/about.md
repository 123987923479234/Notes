# 关于本站

这个站是一个**纯静态**的个人笔记站：MkDocs 在本地把 Markdown 编译成 HTML，部署到 GitHub Pages 之类的静态托管上，没有数据库、没有后端。

## 技术栈

| 部分 | 用了什么 |
| --- | --- |
| 站点生成 | MkDocs 1.6.1 |
| 主题 | Material for MkDocs 9.7.7 |
| 配色 | 自定义 `skyeye` 方案（黑底 + 青色） |
| 公式 | MathJax 3.2.2 |
| 搜索 | Material 内置离线搜索 |
| 内容 | Markdown 文件 |

## 内容放在哪

- 所有笔记：`docs/` 目录下的 `.md` 文件；
- 栏目顺序：`mkdocs.yml` 里的 `nav:`；
- 颜色和字体：`docs/stylesheets/extra.css`；
- 站点名称、描述、页脚：`mkdocs.yml` 顶部。

## 预览与构建

```bash
# 本地预览（改文件会自动刷新）
mkdocs serve

# 生成静态站点到 site/
mkdocs build
```

!!! note "为什么是 MkDocs"
    最初参考的笔记站就是用 MkDocs + Material 搭的：Markdown 写作、左侧自动生成栏目树、内置搜索、支持数学公式和提示块。这套组合不需要前端知识，写完文件就能发布。

## 想改成自己的

打开 `mkdocs.yml`，把 `site_name`、`site_description` 改掉；再去 `docs/` 里替换内容、在 `nav:` 里增删条目即可。具体步骤写在 [建站与改站记录](projects/build-log.md)。
