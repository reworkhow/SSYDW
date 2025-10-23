# 🚀 快速开始指南 - Quick Start Guide

## 🐾 山山医动物 Pet Care Website

这是一个为 Dr. Shen Li 兽医上门服务设计的双语网站。
This is a bilingual website for Dr. Shen Li's veterinary house call service.

## 方式一：使用自动化脚本（推荐）

### 1. 本地预览网站

```bash
./preview.sh
```

这将启动一个本地服务器，并自动在浏览器中打开网站。

### 2. 部署到 GitHub Pages

```bash
./setup.sh
```

按照提示输入您的 GitHub 用户名和仓库名称，脚本会自动完成配置。

---

## 方式二：手动部署

### 步骤 1: 本地预览

在浏览器中直接打开 `index.html` 文件，或运行：

```bash
python3 -m http.server 8000
```

然后访问 `http://localhost:8000`

### 步骤 2: 初始化 Git

```bash
git init
git add .
git commit -m "Initial commit: SSYDW website"
```

### 步骤 3: 创建 GitHub 仓库

1. 访问 https://github.com/new
2. 仓库名称：`SSYDW`
3. 设置为 **Public**
4. 点击 "Create repository"

### 步骤 4: 推送代码

```bash
git branch -M main
git remote add origin https://github.com/你的用户名/SSYDW.git
git push -u origin main
```

### 步骤 5: 启用 GitHub Pages

1. 进入仓库设置：`Settings` > `Pages`
2. Source 选择 `main` 分支
3. 点击 `Save`

### 步骤 6: 访问网站

几分钟后，访问：
```
https://你的用户名.github.io/SSYDW/
```

---

## 📝 自定义内容

### 修改网站标题和描述

编辑 `index.html` 第 8 行：

```html
<title>SSYDW - 陕西阳光大网</title>
```

### 修改主色调

编辑 `style.css` 第 10-11 行：

```css
--primary-color: #2563eb;
--secondary-color: #1e40af;
```

### 添加您的联系信息

编辑 `index.html` 第 84-96 行的联系信息部分。

---

## 🎨 网站功能

- ✅ 响应式设计（支持手机、平板、电脑）
- ✅ 平滑滚动导航
- ✅ 现代化 UI 设计
- ✅ 动画效果
- ✅ 联系表单
- ✅ 移动端菜单

---

## 📚 更多帮助

- 详细部署指南：查看 `DEPLOYMENT.md`
- 项目说明：查看 `README.md`

---

## ⚡ 常用命令

```bash
# 本地预览
./preview.sh

# 更新网站（修改后）
git add .
git commit -m "更新网站内容"
git push

# 查看 Git 状态
git status

# 查看提交历史
git log --oneline
```

---

祝您使用愉快！🎉

