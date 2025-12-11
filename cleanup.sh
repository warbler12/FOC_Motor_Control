#!/bin/bash

# 备份重要文件
echo "Backing up important files..."
mkdir -p ~/backup_foc_project
cp -r mcb/ ~/backup_foc_project/
cp *.md *.m *.slx ~/backup_foc_project/ 2>/dev/null || true

# 列出所有大文件
echo "Listing large files in history..."
git rev-list --all --objects | \
    awk '$2 ~ /[0-9]{6,}/ {print $2, $1}' | \
    sort -nr | head -20

# 使用git filter-branch删除特定文件
echo "Removing large files from history..."
git filter-branch --tree-filter 'rm -f dm-mc02-master.zip mcb/FOCAxialExample/voltage_data.csv 2>/dev/null || true' -- --all

# 清理
echo "Cleaning up..."
git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d
git reflog expire --expire=now --all
git gc --prune=now --aggressive

echo "Done!"
