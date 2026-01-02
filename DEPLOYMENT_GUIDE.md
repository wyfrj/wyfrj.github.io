# 部署指南 - 个人资源小站

## 快速开始

### 第一步：准备文件
1. 确保你拥有要部署的HTML文件（如`personal_resource.html`）
2. 如果需要，可以将文件重命名为`index.html`
3. 将文件放在`personal-resource-site`文件夹中

### 第二步：GitHub仓库设置
1. **登录GitHub**：访问 https://github.com
2. **创建新仓库**：
   - 点击右上角的"+"图标，选择"New repository"
   - 仓库名称：`personal-resource-site`
   - 描述：可填写"个人资源网站"
   - 选择"Public"（公开）
   - 不要初始化README（我们已经有了）
   - 点击"Create repository"

### 第三步：上传文件
#### 方法A：网页上传（推荐给初学者）
1. 在新建的仓库页面，点击"Add file" → "Upload files"
2. 将`personal-resource-site`文件夹中的所有文件拖到上传区域
3. 在下方填写提交信息，如"初始提交：添加网站文件"
4. 点击"Commit changes"

#### 方法B：使用Git命令行
```bash
# 1. 初始化Git仓库
cd personal-resource-site
git init

# 2. 添加所有文件
git add .

# 3. 提交更改
git commit -m "初始提交：添加个人资源网站"

# 4. 连接到GitHub仓库
git remote add origin https://github.com/你的用户名/personal-resource-site.git

# 5. 推送到GitHub
git branch -M main
git push -u origin main
```

### 第四步：启用GitHub Pages
1. 进入仓库的"Settings"（设置）
2. 左侧菜单 → "Pages"
3. 在"Build and deployment"部分：
   - Source: Deploy from a branch
   - Branch: main → / (root)
4. 点击"Save"
5. 等待1-2分钟，页面显示"Your site is live at..."

## 访问你的网站

部署成功后，你的网站地址将是：
```
https://你的用户名.github.io/personal-resource-site/
```

例如，如果你的GitHub用户名是`johnsmith`，那么地址是：
```
https://johnsmith.github.io/personal-resource-site/
```

## 自定义域名（可选）

如果你想使用自己的域名：

1. 在仓库Settings → Pages中，找到"Custom domain"
2. 输入你的域名（如`www.yourdomain.com`）
3. 在你的域名注册商处添加CNAME记录：
   ```
   Type: CNAME
   Name: www
   Value: 你的用户名.github.io
   ```
4. 等待DNS传播（可能需要几小时）

## 更新网站内容

### 更新现有文件
1. 直接编辑本地文件
2. 重新上传到GitHub（使用网页上传或Git命令）
3. 更改会自动部署（通常需要1-2分钟）

### 添加新文件
1. 将新文件添加到`personal-resource-site`文件夹
2. 按照上传步骤上传到GitHub

## 常见问题

### Q1: 网站显示404错误
- 检查GitHub Pages是否已启用
- 确保`index.html`文件在仓库根目录
- 等待几分钟让更改生效

### Q2: 样式或图片不显示
- 检查文件路径是否正确
- 确保所有资源文件都已上传
- 使用相对路径而不是绝对路径

### Q3: 如何查看部署状态
- 进入仓库 → "Actions"标签页
- 查看最新的Pages部署工作流

### Q4: 网站更新后没有变化
- 清除浏览器缓存
- 等待GitHub Pages完成部署
- 检查文件是否成功上传

## 高级功能

### 使用自定义主题
1. 修改`style.css`文件来自定义样式
2. 可以在`index.html`中链接其他CSS框架

### 添加JavaScript功能
1. 创建`script.js`文件
2. 在`index.html`中添加`<script src="script.js"></script>`
3. 实现交互功能

### 多页面网站
1. 创建多个HTML文件（如`about.html`、`contact.html`）
2. 在导航栏中添加链接
3. 所有文件上传到同一仓库

## 技术支持

- GitHub Pages官方文档：https://docs.github.com/pages
- 问题反馈：在GitHub仓库中创建Issue
- 社区支持：GitHub Discussions

---

**提示**：如果你遇到任何问题，可以：
1. 检查GitHub Actions中的部署日志
2. 确保所有文件路径正确
3. 使用浏览器开发者工具检查控制台错误