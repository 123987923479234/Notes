# 简记 · 个人笔记站

一个用 **MkDocs + Material for MkDocs** 搭起来的个人笔记站模板。视觉和结构参考了 [skyeye 的笔记站](https://skyeye-2025.github.io/Home/)：

- 顶部青色导航栏 + 栏目 Tabs
- 左侧多级分类目录（可折叠）
- 中间正文，右侧本页目录
- 纯黑背景 + 青色强调色
- 内置中文搜索、代码复制、提示块、任务列表
- MathJax 数学公式
- 全部内容为 Markdown，改文件即可更新

## 快速开始

要求：Windows + Python 3.10 以上（本机已带 `vendor/`，不需要联网装依赖）。

双击：

- `serve.bat` —— 启动本地预览（改文件自动刷新），地址 `http://127.0.0.1:8000`
- `build.bat` —— 生成静态站点到 `site/`

或者在 PowerShell 里：

```powershell
.\serve.ps1
.\build.ps1
```

如果以后要重新安装依赖：

```powershell
python -m pip install -r requirements.txt
```

## 目录结构

```text
notes-site/
├─ mkdocs.yml            # 站点配置：名称、栏目、主题、扩展
├─ docs/                 # 所有内容
│  ├─ index.md           # 首页
│  ├─ about.md
│  ├─ notes/             # 课程与编程笔记
│  ├─ projects/          # 项目记录
│  ├─ assets/            # 图片、logo（logo.svg）
│  ├─ stylesheets/extra.css   # 配色、字体
│  └─ javascripts/mathjax.js  # 公式配置
├─ vendor/               # 已装好的 MkDocs 依赖（离线构建用）
├─ site/                 # 构建产物（自动生成，不用手改）
├─ serve.ps1 / build.ps1
└─ requirements.txt
```

## 怎么改内容

### 改一篇已有的笔记

直接编辑 `docs/` 下对应的 `.md` 文件，保存即可。预览页面会自动刷新。

### 新增一篇笔记

1. 在 `docs/notes/` 下新建文件，例如 `docs/notes/physics/thermo.md`；
2. 打开 `mkdocs.yml`，在 `nav:` 里加一行：

```yaml
nav:
  - 课程笔记:
      - 大学物理:
          - 电磁学: notes/physics/em.md
          - 热学: notes/physics/thermo.md   # 新增的
```

冒号前是左侧显示的名字，后面是文件路径。

### 新增一个分类

在 `nav:` 里继续嵌套即可。一级条目会变成顶部 Tabs，二级、三级会变成左侧可折叠目录：

```yaml
nav:
  - 课程笔记:
      - 大学物理:
          - 电磁学: notes/physics/em.md
      - 新分类:
          - 新笔记: notes/new/note.md
  - 新栏目:
      - 子分类:
          - 页面: notes/new/page.md
```

### 图片

把图片放进 `docs/assets/`（或和笔记同目录），在 Markdown 里写：

```markdown
![说明文字](../assets/figure.png)
```

### 数学公式

```markdown
行内：$e^{i\pi} + 1 = 0$

块级：
$$
\int_a^b f(x)\,\mathrm{d}x
$$
```

### 提示块

```markdown
!!! note "标题"
    正文需要缩进 4 个空格。

!!! warning
    没有标题时使用默认标题。
```

### 任务清单

```markdown
- [x] 已完成
- [ ] 未完成
```

## 改站名、Logo、配色

- 站名 / 描述 / 页脚：`mkdocs.yml` 顶部的 `site_name`、`site_description`、`copyright`
- Logo 和 favicon：替换 `docs/assets/logo.svg`（或改 `theme.logo` 指向别的文件）
- 配色：`docs/stylesheets/extra.css` 里的 `[data-md-color-scheme="skyeye"]` 变量
  - 主色：`--md-primary-fg-color`
  - 背景：`--md-default-bg-color`
  - 正文：`--md-typeset-color`
  - 链接：`--md-typeset-a-color`
- 字体：`extra.css` 顶部的 `@font-face` 和 `body`。默认加载 zeoseven 的 `ZSFT-344`，加载失败时回退到系统黑体。

## 发布到 GitHub Pages

1. 把 `notes-site` 目录推到 GitHub 仓库；
2. 仓库 **Settings → Pages → Source** 选择 **GitHub Actions**；
3. `.github/workflows/pages.yml` 已写好，push 后自动构建并发布；
4. 工作流会自动按仓库名修正 `site_url`；如果是手动部署，请把 `mkdocs.yml` 里的占位地址改成你的真实地址（它决定 sitemap 和 404 页的链接）。

## 和参考站的差异

| 项目 | 参考站 | 本站 |
| --- | --- | --- |
| 生成器 | MkDocs 1.6.1 + Material 9.7.7 | 相同 |
| 配色 / 字体 | 黑底青色，ZSFT-344 | 相同 |
| 栏目 / 目录 / 搜索 | Material 内置 | 相同 |
| 右上角 GitHub 仓库块 | 有 | 默认关闭，填 `repo_url` 后出现 |
| 页脚社交图标 | GitHub、邮箱 | 默认关闭，按需在 `extra.social` 添加 |
| 访问量统计 | 不蒜子 | 未接入（外部服务，按需加） |
| 内容 | 课程笔记 | 示例笔记，随意替换 |

### 打开右上角 GitHub 仓库块

在 `mkdocs.yml` 里取消这两行的注释，并改成你自己的仓库：

```yaml
repo_url: https://github.com/yourname/notes
repo_name: yourname/notes
```

### 页脚加社交图标

在 `mkdocs.yml` 的 `extra:` 下加：

```yaml
extra:
  generator: false
  social:
    - icon: fontawesome/brands/github
      link: https://github.com/yourname
    - icon: fontawesome/regular/envelope
      link: mailto:you@example.com
```

## 关于联网

- 公式由 CDN 上的 MathJax 渲染，字体来自 zeoseven 字体 API；
- 完全离线时，公式会显示成 LaTeX 源码、字体会回退到系统黑体，其余功能（导航、搜索、代码高亮）都正常；
- 想彻底离线，可以下载 MathJax 到 `docs/javascripts/`，把 `mkdocs.yml` 里 `extra_javascript` 的 CDN 地址换成 `javascripts/tex-mml-chtml.js`。

## 说明

- 依赖版本：MkDocs 1.6.1 + Material for MkDocs 9.7.7，与参考站一致；
- 自带一个自定义 404 页（`overrides/404.html`），部署后访问不存在的地址会看到中文提示和回首页入口；
- GitHub Actions 部署时会自动按仓库地址修正 `site_url`，不需要手动改；
- 配色与字体的取值参考了参考站的公开样式，仅用于个人学习；如需商用请自行替换；
- 参考站的「不蒜子访问统计」和「打字机」脚本没有接入；
- 构建时 Material 会打印一条关于 MkDocs 2.0 的官方公告警告，不影响构建结果；
- `vendor/` 只是为了离线构建；提交到 Git 时可以忽略（已在 `.gitignore` 里），CI 会用 `requirements.txt` 安装。
