#!/bin/bash

# SSYDW GitHub Pages 部署脚本
# Setup script for deploying SSYDW to GitHub Pages

echo "🚀 SSYDW GitHub Pages 部署向导"
echo "================================"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
    echo "✅ Git 仓库已初始化"
else
    echo "✅ Git 仓库已存在"
fi

echo ""
echo "📝 请输入您的 GitHub 用户名："
read github_username

if [ -z "$github_username" ]; then
    echo "❌ 用户名不能为空"
    exit 1
fi

echo ""
echo "📝 请输入仓库名称 (默认: SSYDW):"
read repo_name

if [ -z "$repo_name" ]; then
    repo_name="SSYDW"
fi

echo ""
echo "📋 配置信息："
echo "   用户名: $github_username"
echo "   仓库名: $repo_name"
echo "   仓库地址: https://github.com/$github_username/$repo_name.git"
echo ""

read -p "确认信息是否正确？(y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ 已取消部署"
    exit 1
fi

# Add all files
echo "📦 添加文件到 Git..."
git add .

# Commit
echo "💾 创建提交..."
git commit -m "Initial commit: SSYDW website"

# Check if remote exists
if git remote | grep -q "^origin$"; then
    echo "⚠️  远程仓库 'origin' 已存在，更新地址..."
    git remote set-url origin "https://github.com/$github_username/$repo_name.git"
else
    echo "🔗 添加远程仓库..."
    git remote add origin "https://github.com/$github_username/$repo_name.git"
fi

# Rename branch to main
echo "🌿 切换到 main 分支..."
git branch -M main

echo ""
echo "✅ 准备就绪！"
echo ""
echo "📤 下一步："
echo "1. 在 GitHub 上创建一个新仓库（如果还没有）："
echo "   https://github.com/new"
echo "   - 仓库名: $repo_name"
echo "   - 设置为 Public"
echo "   - 不要初始化 README"
echo ""
echo "2. 运行以下命令推送代码："
echo "   git push -u origin main"
echo ""
echo "3. 在 GitHub 仓库设置中启用 GitHub Pages："
echo "   Settings > Pages > Source: main branch"
echo ""
echo "4. 您的网站将在以下地址发布："
echo "   https://$github_username.github.io/$repo_name/"
echo ""

read -p "现在推送到 GitHub？(y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "📤 推送到 GitHub..."
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 成功！代码已推送到 GitHub"
        echo ""
        echo "🌐 请访问以下链接启用 GitHub Pages："
        echo "   https://github.com/$github_username/$repo_name/settings/pages"
        echo ""
        echo "📱 网站地址："
        echo "   https://$github_username.github.io/$repo_name/"
    else
        echo ""
        echo "❌ 推送失败。请确保："
        echo "   1. 您已在 GitHub 上创建了仓库"
        echo "   2. 您有权限推送到该仓库"
        echo "   3. 您的 Git 凭据配置正确"
        echo ""
        echo "手动推送："
        echo "   git push -u origin main"
    fi
else
    echo ""
    echo "ℹ️  稍后手动推送："
    echo "   git push -u origin main"
fi

echo ""
echo "📚 更多帮助请查看 DEPLOYMENT.md"

