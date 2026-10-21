#!/bin/bash
set -e
REPO_URL="https://github.com/gogptsss/spectrum-spiral-liu-cixin.git"
BRANCH="main"
echo "🚀 推送到 $REPO_URL"
if [ ! -d ".git" ]; then
  git init
  git branch -M $BRANCH
fi
git remote remove origin 2>/dev/null || true
git remote add origin $REPO_URL
git add .
git commit -m "feat: publish NT$20 subscription e-book" || echo "無變更"
git push -u origin $BRANCH -f
echo "✅ 已推送 https://gogptsss.github.io/spectrum-spiral-liu-cixin/"
