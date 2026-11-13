# Python 虚拟环境

每个项目一个环境，是避免「在我电脑上能跑」的最便宜的办法。

## 创建与激活

```bash
# 创建
python -m venv .venv

# Windows PowerShell
.venv\Scripts\Activate.ps1

# macOS / Linux
source .venv/bin/activate
```

激活后 `python` 和 `pip` 都指向当前环境。

退出：

```bash
deactivate
```

!!! warning "PowerShell 执行策略"
    如果在 Windows 上提示「禁止运行脚本」，可以临时放宽当前用户策略：

    ```powershell
    Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
    ```

    不要用 `-Scope LocalMachine`，除非你清楚影响范围。

## 依赖管理

最简单的做法是 `requirements.txt`：

```bash
pip freeze > requirements.txt
pip install -r requirements.txt
```

更现代的做法是 `pyproject.toml`：

```toml
[project]
name = "my-notes"
version = "0.1.0"
requires-python = ">=3.10"
dependencies = [
  "requests>=2.31",
  "rich>=13.0",
]
```

然后：

```bash
pip install -e .
```

## 常见坑

| 现象 | 原因 | 处理 |
| --- | --- | --- |
| 装完包仍提示找不到 | 装到了全局环境 | 确认激活后 `which python` |
| 多个 Python 版本混用 | PATH 里有多个解释器 | 明确用 `py -3.11` 或绝对路径 |
| 环境目录进了 Git | 忘了 `.gitignore` | 加入 `.venv/` |
| 依赖冲突 | 同一环境装了互斥版本 | 一个项目一个环境 |

## .gitignore

```gitignore
.venv/
__pycache__/
*.pyc
.pytest_cache/
```

> 虚拟环境不要提交到仓库，提交依赖声明就够了。
