@echo off
echo ========================================
echo 个人资源小站 - Git初始化脚本
echo ========================================
echo.

REM 检查是否在正确的目录
if not exist "index.html" (
    echo 错误：请在包含index.html文件的目录中运行此脚本
    pause
    exit /b 1
)

echo 步骤1：初始化Git仓库
git init
if %errorlevel% neq 0 (
    echo 错误：Git未安装或不在PATH中
    echo 请先安装Git：https://git-scm.com/download/win
    pause
    exit /b 1
)

echo.
echo 步骤2：添加所有文件到暂存区
git add .

echo.
echo 步骤3：提交更改
git commit -m "初始提交：个人资源小站"

echo.
echo ========================================
echo Git仓库初始化完成！
echo.
echo 接下来需要：
echo 1. 在GitHub上创建新仓库：https://github.com/new
echo 2. 仓库名称建议：personal-resource-site
echo 3. 不要初始化README（我们已经有了）
echo 4. 创建后，按照以下命令连接到远程仓库：
echo.
echo    git remote add origin https://github.com/你的用户名/personal-resource-site.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 5. 然后在GitHub仓库设置中启用Pages功能
echo ========================================
echo.
pause