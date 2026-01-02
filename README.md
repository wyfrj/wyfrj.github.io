# 个人资源小站

这是一个通过GitHub Pages部署的个人资源网站。

## 功能特点

- 🌐 **全球访问**：通过GitHub Pages提供全球CDN加速
- 🔒 **HTTPS安全**：自动启用SSL加密
- 📱 **响应式设计**：适配各种设备屏幕
- ⚡ **快速加载**：静态文件，加载速度快
- 🎨 **现代化界面**：使用Bootstrap 5和自定义样式

## 部署步骤

### 1. 创建GitHub仓库

1. 访问 [GitHub新建仓库页面](https://github.com/new)
2. 输入仓库名称：`personal-resource-site`
3. 选择公开（Public）仓库
4. 点击"Create repository"

### 2. 上传文件到GitHub

有几种方式可以上传文件：

#### 方法一：通过网页上传
1. 在新建的仓库页面，点击"Add file" → "Upload files"
2. 将本地的`personal-resource-site`文件夹中的所有文件拖拽到上传区域
3. 点击"Commit changes"

#### 方法二：使用Git命令行
```bash
# 克隆仓库
git clone https://github.com/你的用户名/personal-resource-site.git

# 进入目录
cd personal-resource-site

# 复制所有文件到仓库目录
# （将你的文件复制到这里）

# 添加所有文件
git add .

# 提交更改
git commit -m "初始提交：添加个人资源网站文件"

# 推送到GitHub
git push origin main
```

### 3. 启用GitHub Pages

1. 进入仓库的"Settings"（设置）
2. 在左侧菜单中找到"Pages"
3. 在"Source"部分，选择分支为`main`（或`master`）
4. 选择文件夹为`/(root)`
5. 点击"Save"

### 4. 访问你的网站

等待1-2分钟后，你的网站将在以下地址上线：
```
https://你的用户名.github.io/personal-resource-site/
```

## 文件结构

```
personal-resource-site/
├── index.html          # 主页面文件
├── style.css          # 自定义样式文件
├── README.md          # 项目说明文件
└── assets/            # 资源文件夹（可选）
    ├── images/        # 图片资源
    └── js/           # JavaScript文件
```

## 自定义内容

### 修改网站内容
1. 编辑`index.html`文件来修改网页内容
2. 编辑`style.css`文件来修改样式
3. 添加你自己的图片到`assets/images/`文件夹

### 添加新页面
1. 创建新的HTML文件（如`about.html`）
2. 在`index.html`中添加导航链接
3. 上传到GitHub仓库

## 技术支持

- GitHub Pages文档：https://docs.github.com/pages
- Bootstrap 5文档：https://getbootstrap.com/docs/5.0
- 问题反馈：在GitHub仓库中创建Issue

## 许可证

本项目采用MIT许可证。详见LICENSE文件。

---

**提示**：如果你有原始的`personal_resource.html`文件，可以将其重命名为`index.html`替换当前文件，或者根据需要进行修改。