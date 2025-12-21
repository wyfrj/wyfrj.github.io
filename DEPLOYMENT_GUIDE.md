# GitHub Pages 部署指南

## 项目文件结构
```
3d-card-memo-website/
├── index.html          # 主页面文件
├── style.css          # 额外样式文件
├── README.md          # 项目说明
├── .gitignore         # Git忽略文件
└── DEPLOYMENT_GUIDE.md # 本部署指南
```

## 手动部署到GitHub Pages步骤

### 步骤1：在GitHub上创建新仓库
1. 访问 https://github.com/new
2. 输入仓库名称（例如：`3d-card-memo`）
3. 选择"Public"（公开）
4. **不要**初始化README、.gitignore或license
5. 点击"Create repository"

### 步骤2：上传文件到GitHub
#### 方法A：通过GitHub网页上传
1. 在新建的仓库页面，点击"Add file" → "Upload files"
2. 将`3d-card-memo-website`文件夹中的所有文件拖拽到上传区域
3. 填写提交信息："Initial commit: 3D时间卡片备忘录网站"
4. 点击"Commit changes"

#### 方法B：通过Git命令行（如果Git可用）
```bash
# 进入项目目录
cd "C:\Users\wyf\3d-card-memo-website"

# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit: 3D时间卡片备忘录网站"

# 添加远程仓库（将YOUR_USERNAME和REPO_NAME替换为你的信息）
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# 推送到GitHub
git branch -M main
git push -u origin main
```

### 步骤3：启用GitHub Pages
1. 进入仓库的"Settings"（设置）
2. 在左侧菜单找到"Pages"（页面）
3. 在"Source"（源）部分：
   - 选择"Deploy from a branch"（从分支部署）
   - 分支选择"main"（或"master"）
   - 文件夹选择"/ (root)"（根目录）
4. 点击"Save"（保存）

### 步骤4：访问你的网站
1. GitHub Pages部署完成后（通常需要1-2分钟）
2. 访问：`https://YOUR_USERNAME.github.io/REPO_NAME/`
   - 例如：`https://wyf.github.io/3d-card-memo/`

## 网站功能验证
部署完成后，请测试以下功能：
- [ ] 时间显示是否正确更新
- [ ] 创建备忘录卡片功能
- [ ] 编辑和删除备忘录功能
- [ ] 毛玻璃效果切换
- [ ] 响应式设计（在手机和电脑上测试）

## 自定义域名（可选）
如果你想使用自定义域名：
1. 在仓库Settings → Pages中，添加你的域名
2. 在你的域名DNS设置中添加CNAME记录指向GitHub Pages

## 更新网站
要更新网站内容：
1. 修改本地文件
2. 重新上传到GitHub仓库
3. GitHub Pages会自动重新部署

## 故障排除
- **页面不显示**：检查index.html是否在仓库根目录
- **样式丢失**：检查CSS文件路径是否正确
- **功能失效**：检查浏览器控制台是否有JavaScript错误
- **部署延迟**：GitHub Pages部署可能需要几分钟

## 技术支持
如果遇到问题：
1. 检查GitHub Pages文档：https://docs.github.com/pages
2. 确保所有文件都在仓库根目录
3. 验证HTML/CSS/JavaScript语法正确性

你的网站现在应该可以通过GitHub Pages访问了！