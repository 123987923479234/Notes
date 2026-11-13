# 建站与改站记录

这份笔记记录本站的文件结构、改内容的方法和发布流程。忘了怎么弄的时候回来翻这里。

## 目录结构

```text
notes-site/
├─ mkdocs.yml            # 站点配置：名称、栏目、主题、扩展
├─ docs/                 # 所有内容都放这里
│  ├─ index.md           # 首页
│  ├─ about.md
│  ├─ notes/             # 课程与编程笔记
│  ├─ projects/          # 项目记录
│  ├─ assets/            # 图片、logo
│  ├─ stylesheets/
│  │  └─ extra.css       # 配色与字体
│  └─ javascripts/
│     └─ mathjax.js      # 公式配置
├─ vendor/               # 已安装好的 MkDocs 依赖（离线可用）
├─ site/                 # 构建产物，不用手动改
├─ serve.ps1             # 本地预览
└─ build.ps1             # 生成静态站点
```

## 新增一篇笔记

1. 在 `docs/notes/` 下新建一个 `.md` 文件；
2. 打开 `mkdocs.yml`，在 `nav:` 对应的分类下加一行；
3. 保存，预览页面会自动出现新条目。

!!! example "示例"
    新建 `docs/notes/physics/thermo.md`，然后在 `nav:` 里写：

    ```yaml
    - 大学物理:
        - 电磁学: notes/physics/em.md
        - 热学: notes/physics/thermo.md
    ```

    冒号前面是左侧显示的名字，后面是文件路径。名字可以和文件名不一样。

## 修改分类

`nav:` 就是一个嵌套列表，层级随意增减：

```yaml
nav:
  - 首页:
      - index.md
  - 课程笔记:
      - 大学物理:
          - 电磁学: notes/physics/em.md
      - 电路:
          - 直流电路: notes/circuit/dc.md
```

- 一级条目会变成顶部 Tabs；
- 二级、三级条目会变成左侧可折叠的分类；
- 侧栏的顺序就是这里的书写顺序。

## 预览与构建

```powershell
# 预览，改文件自动刷新
.\serve.ps1

# 生成 site/ 目录
.\build.ps1
```

如果系统里已经装好 MkDocs，也可以直接用命令：

```bash
mkdocs serve
mkdocs build
```

## 部署到 GitHub Pages

1. 把整个 `notes-site` 目录推到 GitHub 仓库；
2. 仓库设置 → Pages → Source 选择 **GitHub Actions**；
3. 项目里已经放好 `.github/workflows/pages.yml`，推送后自动构建发布；
4. 如果站点在子路径下（`https://用户名.github.io/仓库名/`），把 `mkdocs.yml` 里的 `site_url` 改成对应地址。

!!! warning "site_url 与子路径"
    部署到 `用户名.github.io/仓库名/` 时，`site_url` 要写成完整地址，否则搜索索引和部分链接会跑到根路径。

## 常见问题

| 问题 | 原因 | 处理 |
| --- | --- | --- |
| 本地预览样式正常，线上首发是旧内容 | 浏览器缓存 / 未重新构建 | 强刷，确认 Actions 成功 |
| 公式显示成原文 | MathJax 脚本没加载 | 检查网络，或改用本地 MathJax |
| 搜索没有结果 | 构建后索引未生成 | 重新 `mkdocs build` |
| 中文标题锚点变成 `_1` | 默认 slug 规则 | 正常现象，不影响阅读 |
| 字体和截图不一样 | 字体 API 被墙或加载失败 | 会回退到系统黑体 |

> 内容永远是主角，样式只是把它摆整齐。改坏了也不怕，`site/` 是生成物，删掉重建就行。
