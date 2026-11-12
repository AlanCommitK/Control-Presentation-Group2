#!/bin/bash
# 推送到 GitHub。前提：你已经在 GitHub 上建好同名空仓库（不要勾 README/.gitignore/License）。
# 用法：  bash 推送.sh  <仓库的 https 地址>
# 例如：  bash 推送.sh  https://github.com/AlanCommitK/Control-Presentation-Group2.git
set -e
URL="${1:?用法: bash 推送.sh https://github.com/用户名/仓库名.git}"
cd "$(dirname "$0")"
git remote remove origin 2>/dev/null || true
git remote add origin "$URL"
git push -u origin main
echo
echo "✓ 推送完成：${URL%.git}"
