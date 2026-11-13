# Git 常用命令

日常真正高频的命令其实不多，剩下的查文档就行。

## 初始化与提交

```bash
git init
git add .
git commit -m "feat: 初始化笔记站"
git remote add origin git@github.com:you/notes.git
git push -u origin main
```

## 看状态与历史

```bash
git status                 # 当前状态
git diff                   # 未暂存的改动
git diff --staged          # 已暂存的改动
git log --oneline --graph  # 提交图
git log -p path/to/file    # 某文件的改动历史
```

## 分支

```bash
git switch -c feature/x    # 新建并切换
git switch main            # 切换回主分支
git merge feature/x        # 合并
git branch -d feature/x    # 删除已合并分支
```

## 撤销

| 场景 | 命令 |
| --- | --- |
| 丢弃工作区某个文件的修改 | `git restore file` |
| 取消暂存 | `git restore --staged file` |
| 修改上一条提交信息 | `git commit --amend` |
| 回退到某次提交（保留改动） | `git reset --soft HEAD~1` |
| 回退并丢弃改动 | `git reset --hard HEAD~1` |
| 撤销某次提交（生成反向提交） | `git revert <hash>` |

!!! warning "reset --hard 之前"
    它会直接丢掉未提交的修改。执行前先 `git status` 看清楚，必要时先 `git stash`。

## 暂存现场

```bash
git stash push -m "wip: 半成品"
git stash list
git stash pop
```

## 远程

```bash
git fetch origin
git pull --rebase origin main
git push origin main
```

## 提交信息约定

```text
feat: 新功能
fix: 修复问题
docs: 只改文档
style: 格式调整
refactor: 重构
chore: 杂项
```

> 小步提交，一次只做一件事。半年后的你会感谢现在的你。
