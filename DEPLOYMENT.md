# 部署指南 - Deployment Guide

## 📋 部署步骤

### 1. 初始化 Git 仓库

如果还没有初始化 Git，请运行：

```bash
cd /Users/haocheng/Github/SSYDW
git init
git add .
git commit -m "Initial commit: SSYDW website"
```

### 2. 创建 GitHub 仓库

1. 访问 [GitHub](https://github.com)
2. 点击右上角的 "+" 图标
3. 选择 "New repository"
4. 仓库名称：`SSYDW`
5. 设置为 **Public**（GitHub Pages 需要公开仓库，除非您有 Pro 账户）
6. **不要**勾选 "Initialize this repository with a README"
7. 点击 "Create repository"

### 3. 推送到 GitHub

```bash
git branch -M main
git remote add origin https://github.com/haocheng/SSYDW.git
git push -u origin main
```

**注意**：将 `haocheng` 替换为您的 GitHub 用户名。

### 4. 启用 GitHub Pages

1. 进入您的 GitHub 仓库页面
2. 点击 "Settings"（设置）
3. 在左侧菜单中找到 "Pages"
4. 在 "Source" 下：
   - Branch: 选择 `main`
   - Folder: 选择 `/ (root)`
5. 点击 "Save"

### 5. 访问您的网站

几分钟后，您的网站将在以下地址可用：

```
https://haocheng.github.io/SSYDW/
```

**注意**：将 `haocheng` 替换为您的 GitHub 用户名。

## 🔄 更新网站

每次修改后，运行以下命令来更新网站：

```bash
git add .
git commit -m "描述您的更改"
git push
```

GitHub Pages 会自动重新部署您的网站。

## 🌐 自定义域名（可选）

如果您有自己的域名（如 `www.ssydw.com`）：

### 1. 在 GitHub 中配置

1. 进入仓库的 Settings > Pages
2. 在 "Custom domain" 中输入您的域名：`www.ssydw.com`
3. 点击 "Save"
4. 勾选 "Enforce HTTPS"（建议）

### 2. 配置 DNS

在您的域名提供商（如阿里云、腾讯云等）的 DNS 设置中添加：

**方法 1：使用 CNAME（推荐）**
```
类型：CNAME
主机记录：www
记录值：haocheng.github.io
TTL：600
```

**方法 2：使用 A 记录**
添加以下 4 条 A 记录：
```
类型：A
主机记录：@
记录值：185.199.108.153
记录值：185.199.109.153
记录值：185.199.110.153
记录值：185.199.111.153
TTL：600
```

### 3. 创建 CNAME 文件

在项目根目录创建一个名为 `CNAME` 的文件（无扩展名），内容为：

```
www.ssydw.com
```

然后提交并推送：

```bash
echo "www.ssydw.com" > CNAME
git add CNAME
git commit -m "Add custom domain"
git push
```

## 🔍 故障排除

### 网站没有更新？

1. 检查 GitHub Actions：
   - 进入仓库的 "Actions" 标签
   - 查看最新的部署是否成功

2. 清除浏览器缓存：
   - Chrome/Edge: `Ctrl+Shift+R` (Windows) 或 `Cmd+Shift+R` (Mac)
   - Firefox: `Ctrl+F5` (Windows) 或 `Cmd+Shift+R` (Mac)

3. 等待几分钟：
   - GitHub Pages 部署可能需要 5-10 分钟

### 404 错误？

确保：
- 有一个名为 `index.html` 的文件在根目录
- 文件已经推送到 GitHub
- GitHub Pages 设置正确

### 样式没有加载？

检查：
- CSS 和 JS 文件路径是否正确
- 文件是否已推送到 GitHub
- 浏览器控制台是否有错误信息

## 📊 网站分析（可选）

### 添加 Google Analytics

1. 在 [Google Analytics](https://analytics.google.com/) 创建账户
2. 获取跟踪 ID
3. 在 `index.html` 的 `<head>` 标签中添加跟踪代码

### 添加百度统计

1. 在 [百度统计](https://tongji.baidu.com/) 注册
2. 获取统计代码
3. 在 `index.html` 的 `<head>` 标签中添加统计代码

## 🎨 自定义建议

1. **更换图标**：将 `favicon.svg` 替换为您自己的图标
2. **添加图片**：在项目中创建 `images/` 文件夹存放图片
3. **修改颜色**：编辑 `style.css` 中的 CSS 变量
4. **添加页面**：创建新的 HTML 文件并更新导航

## 📞 需要帮助？

- [GitHub Pages 文档](https://docs.github.com/pages)
- [GitHub 社区论坛](https://github.community/)

---

祝您部署顺利！🚀

