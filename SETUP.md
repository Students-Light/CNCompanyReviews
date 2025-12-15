# 快速配置指南 (Quick Setup)

## 🎯 关键配置文件

在部署前，你需要修改以下文件：

### 1. 配置 Waline 服务器地址

**文件**: `docs/.vitepress/theme/components/WalineComment.vue`

**位置**: 第 18 行左右

**需要修改的内容**:
```javascript
serverURL: 'YOUR_WALINE_SERVER_URL', // 需要替换为你的 Waline 服务器地址
```

**修改为**:
```javascript
serverURL: 'https://your-waline-project.vercel.app', // 替换为你在 Vercel 部署的 Waline 地址
```

## 📝 完整部署流程

### 第一步：Fork 仓库
1. 点击本仓库右上角的 "Fork" 按钮
2. Fork 到你自己的 GitHub 账号下

### 第二步：部署 Waline 后端

1. **注册 LeanCloud 国际版**
   - 访问: https://console.leancloud.app/
   - 创建应用，记录 `App ID`, `App Key`, `Master Key`

2. **部署 Waline 到 Vercel**
   - 点击: [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample)
   - 配置环境变量:
     ```
     LEAN_ID=你的LeanCloud_App_ID
     LEAN_KEY=你的LeanCloud_App_Key
     LEAN_MASTER_KEY=你的LeanCloud_Master_Key
     LEAN_SERVER=https://xxxxxx.api.lncldglobal.com
     ```
   - 部署完成后记录 Waline 地址（如: `https://your-waline.vercel.app`）

3. **注册 Waline 管理员**
   - 访问: `https://your-waline.vercel.app/ui/register`
   - 第一个注册的用户自动成为管理员

### 第三步：配置并部署前端

1. **Clone 你的 Fork 仓库**
   ```bash
   git clone https://github.com/你的用户名/CNCompanyReviews.git
   cd CNCompanyReviews
   ```

2. **修改 Waline 配置**
   编辑 `docs/.vitepress/theme/components/WalineComment.vue`:
   ```javascript
   serverURL: 'https://your-waline.vercel.app', // 替换为你的 Waline 地址
   ```

3. **提交修改**
   ```bash
   git add .
   git commit -m "Configure Waline server"
   git push
   ```

4. **部署到 Vercel**
   - 访问: https://vercel.com
   - 点击 "New Project"
   - 导入你的 GitHub 仓库
   - 点击 "Deploy"

### 第四步：验证

1. 访问你的 Vercel 部署地址
2. 滚动到评论区
3. 尝试匿名发布一条评论
4. 检查 Waline 后台是否收到评论

## ⚙️ 本地开发

```bash
# 安装依赖
npm install

# 启动开发服务器
npm run docs:dev

# 访问 http://localhost:5173
```

## 🔧 常用命令

```bash
# 开发模式
npm run docs:dev

# 构建生产版本
npm run docs:build

# 预览生产版本
npm run docs:preview
```

## 🆘 常见问题

### Q: 评论区不显示怎么办？

A:
1. 检查 `WalineComment.vue` 中的 `serverURL` 是否正确
2. 打开浏览器控制台查看错误信息
3. 确认 Waline 后端是否正常运行

### Q: 如何修改页面样式？

A: 编辑 `docs/.vitepress/theme/custom.css`

### Q: 如何添加新城市？

A:
1. 在根目录创建 `新城市.md` 文件
2. 在 `docs/index.md` 中添加链接
3. 提交并推送

## 📞 获取帮助

- 查看详细部署指南: [DEPLOYMENT.md](DEPLOYMENT.md)
- 提交 Issue: [GitHub Issues](https://github.com/Students-Light/CNCompanyReviews/issues)
- 在网站评论区留言

---

**预计配置时间**: 20-30 分钟

**总成本**: 0 元（全部免费服务）
