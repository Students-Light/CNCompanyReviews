@echo off
echo ========================================
echo 推送代码到 GitHub
echo ========================================
echo.

cd /d C:\Users\hhn\Desktop\CNCompanyReviews

echo 当前仓库: Students-Light/CNCompanyReviews
echo.

echo [步骤 1] 检查 Git 状态...
git status
echo.

echo [步骤 2] 开始推送...
echo 注意: 如果提示输入用户名和密码:
echo   - 用户名: Students-Light
echo   - 密码: 使用你的 GitHub Personal Access Token (不是密码!)
echo.

git push origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo ✅ 推送成功!
    echo ========================================
    echo.
    echo 接下来请告诉 Claude: "代码已推送"
    echo.
) else (
    echo.
    echo ========================================
    echo ❌ 推送失败
    echo ========================================
    echo.
    echo 可能的原因:
    echo 1. 需要 Personal Access Token
    echo 2. 权限问题
    echo.
    echo 解决方法:
    echo 1. 生成 Token: https://github.com/settings/tokens
    echo 2. 勾选 'repo' 权限
    echo 3. 复制 Token
    echo 4. 推送时输入:
    echo    - Username: Students-Light
    echo    - Password: 粘贴你的 Token
    echo.
)

pause
