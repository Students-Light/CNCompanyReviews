# 部署指南 (Deployment Guide)

本文档将指导你如何部署 CNCompanyReviews 项目，并配置 Waline 匿名评论系统。

## 📋 前置准备

### 1. 注册必要账号

需要注册以下账号（建议使用隐私邮箱如 ProtonMail 或 Tutanota）：

- **GitHub 账号**：用于托管代码
- **Vercel 账号**：用于部署网站和 Waline 后端
- **LeanCloud 国际版账号**：用于存储评论数据

⚠️ **隐私提示**：建议全程使用 VPN 或 Tor 浏览器操作，保护身份隐私。

## 🗄️ 第一步：配置 LeanCloud 数据库

### 1.1 注册 LeanCloud 国际版

1. 访问 [LeanCloud 国际版](https://console.leancloud.app/)（**必须是国际版**，国内版需要实名认证）
2. 注册账号并登录
3. 创建新应用（选择"开发版"，免费）

### 1.2 获取数据库凭证

1. 进入应用 → 设置 → 应用凭证
2. 记录以下三个值（稍后会用到）：
   - `App ID`
   - `App Key`
   - `Master Key`

## 🚀 第二步：部署 Waline 后端到 Vercel

### 2.1 一键部署

1. 点击 Waline 官方部署链接：
   [![Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample)

2. 登录 Vercel（可以直接用 GitHub 账号登录）

3. 填写项目名称（如 `cncompany-comments`）

4. 配置环境变量：
   ```
   LEAN_ID=你的 LeanCloud App ID
   LEAN_KEY=你的 LeanCloud App Key
   LEAN_MASTER_KEY=你的 LeanCloud Master Key
   LEAN_SERVER=https://your-app-id.api.lncldglobal.com  # 国际版服务器地址
   ```

5. 点击 Deploy，等待部署完成

### 2.2 获取 Waline 服务器地址

部署完成后，你会得到一个地址，类似：
```
https://your-waline-project.vercel.app
```

**记下这个地址**，这是你的 Waline 后端服务器地址。

### 2.3 配置 Waline 管理员

1. 访问 `https://your-waline-project.vercel.app/ui/register`
2. 注册第一个账号（第一个注册的用户自动成为管理员）
3. 登录后可以在后台管理评论

## 🌐 第三步：部署前端网站到 Vercel

### 3.1 推送代码到你的 GitHub

```bash
cd CNCompanyReviews
git remote set-url origin https://github.com/你的用户名/CNCompanyReviews.git
git add .
git commit -m "Initial setup with Waline"
git push -u origin main
```

### 3.2 修改 Waline 配置

编辑 `docs/.vitepress/theme/components/WalineComment.vue` 文件：

找到这一行：
```javascript
serverURL: 'YOUR_WALINE_SERVER_URL',
```

替换为你在第二步获得的 Waline 地址：
```javascript
serverURL: 'https://your-waline-project.vercel.app',
```

提交修改：
```bash
git add .
git commit -m "Configure Waline server URL"
git push
```

### 3.3 在 Vercel 部署前端

1. 登录 [Vercel](https://vercel.com)
2. 点击 "New Project"
3. 导入你的 GitHub 仓库 `CNCompanyReviews`
4. Vercel 会自动检测到 VitePress 框架
5. 点击 Deploy

部署完成后，你会得到一个访问地址，如：
```
https://cncompany-reviews.vercel.app
```

## ✅ 第四步：验证部署

1. 访问你的网站
2. 滚动到页面底部的"匿名评论区"
3. 尝试发布一条测试评论（无需登录）
4. 访问 Waline 管理后台 `https://your-waline-project.vercel.app/ui` 查看评论

## 🔒 第五步：安全加固（可选但推荐）

### 5.1 配置域名（可选）

在 Vercel 项目设置中，可以绑定自定义域名：
- 更专业的外观
- 更难被追踪

### 5.2 配置评论审核

在 Waline 后台可以设置：
- 敏感词过滤
- 评论审核（新评论需要审核后才显示）
- IP 黑名单

### 5.3 备份数据

定期从 LeanCloud 导出数据备份：
1. 进入 LeanCloud 控制台
2. 数据存储 → 导出数据
3. 下载备份文件

## 📝 日常维护

### 管理评论

1. 访问 `https://your-waline-project.vercel.app/ui`
2. 登录管理员账号
3. 可以：
   - 删除垃圾评论
   - 置顶重要评论
   - 审核待审评论

### 整理评论到正文

1. 定期查看评论区高赞内容
2. 将可靠的爆料整理到对应城市的 Markdown 文件
3. 提交 Git 更新

## 🆘 常见问题

### 评论区不显示？

1. 检查浏览器控制台是否有错误
2. 确认 `WalineComment.vue` 中的 `serverURL` 是否正确
3. 确认 Waline 后端服务是否正常运行

### 评论无法提交？

1. 检查 LeanCloud 凭证是否正确
2. 确认 LeanCloud 应用状态是否正常
3. 查看 Vercel 部署日志排查错误

### 如何修改评论区样式？

编辑 `docs/.vitepress/theme/custom.css` 文件自定义样式。

## 🔐 隐私保护建议

1. **身份隔离**：
   - 使用专门的邮箱注册以上所有服务
   - 不要在社交媒体用真实身份推广

2. **操作安全**：
   - 使用 VPN 或 Tor 浏览器
   - 不要在公司网络操作

3. **内容审核**：
   - 及时删除包含个人隐私的评论
   - 提醒用户去除截图水印

---

**成本总结**：全部服务使用免费版本，总成本 **0元**

**维护时间**：每周约 10-30 分钟（查看和管理评论）
