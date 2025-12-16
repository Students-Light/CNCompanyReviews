# 🚀 完整部署指南

本文档提供 CNCompanyReviews 项目的完整部署流程，包括 LeanCloud 数据库配置、Waline 评论系统部署、前端网站部署以及常见问题解决方案。

## 📋 前置准备

### 需要注册的账号

建议使用隐私邮箱（如 ProtonMail 或 Tutanota）注册以下账号：

- **GitHub 账号**：用于托管代码
- **Vercel 账号**：用于部署网站和 Waline 后端
- **LeanCloud 国际版账号**：用于存储评论数据

⚠️ **隐私提示**：建议全程使用 VPN 或 Tor 浏览器操作，保护身份隐私。

### 环境要求

本地开发需要：
- Node.js 18+
- npm 或 pnpm
- Git

---

## 🗄️ 第一步：配置 LeanCloud 数据库

### 1.1 注册 LeanCloud 国际版

1. 访问 [LeanCloud 国际版](https://console.leancloud.app/)（**必须是国际版**，国内版需要实名认证）
2. 使用隐私邮箱注册账号并登录
3. 创建新应用（选择"开发版"，免费）

### 1.2 获取数据库凭证

1. 进入应用 → 设置 → 应用凭证
2. 记录以下信息（稍后会用到）：
   - `App ID`
   - `App Key`
   - `Master Key`
   - `服务器地址`（格式：`https://xxxxxx.api.lncldglobal.com`）

⚠️ **安全提醒**：MasterKey 拥有最高权限，请勿泄露！

---

## 💬 第二步：部署 Waline 评论系统

### 2.1 一键部署到 Vercel

1. 点击 Waline 官方部署链接：

   [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample)

   或访问：`https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample`

2. 登录 Vercel（可以直接用 GitHub 账号登录）

3. 填写仓库名称（建议：`cncompany-waline`）

### 2.2 配置环境变量

在部署页面的 **Environment Variables（环境变量）** 部分，添加以下 4 个变量：

| 变量名 | 说明 | 示例值 |
|--------|------|--------|
| `LEAN_ID` | LeanCloud App ID | `gHzOU1xlSmFJGxQXPKVKd2Os-MdYXbMMI` |
| `LEAN_KEY` | LeanCloud App Key | `fNuSL2di3ZSHUPuGH7Kfgx3G` |
| `LEAN_MASTER_KEY` | LeanCloud Master Key | `fTgL1N5roCuXkmEa6sDx2cyE` |
| `LEAN_SERVER` | LeanCloud 服务器地址 | `https://ghzou1xl.api.lncldglobal.com` |

**操作步骤**：
1. 点击 "Add Environment Variable"
2. 在 "Key" 输入变量名
3. 在 "Value" 输入对应的值
4. 点击 "Add" 添加
5. 重复以上步骤添加所有 4 个变量

### 2.3 完成部署

1. 确认所有环境变量已添加
2. 点击 **"Deploy"** 按钮
3. 等待 1-2 分钟，直到看到 "Congratulations!"

### 2.4 获取 Waline 服务器地址

部署成功后，你会得到一个地址，类似：
```
https://cncompany-waline.vercel.app
```

**记下这个地址！** 这是你的 Waline 后端服务器地址。

### 2.5 注册 Waline 管理员

1. 访问 `https://你的waline地址.vercel.app/ui/register`
2. 填写邮箱和密码
3. 点击 "注册"

⚠️ **重要**：第一个注册的用户自动成为管理员！

---

## 🌐 第三步：部署前端网站

### 3.1 Fork 并 Clone 仓库

1. Fork 本仓库到你的 GitHub 账号
2. Clone 到本地：

```bash
git clone https://github.com/你的用户名/CNCompanyReviews.git
cd CNCompanyReviews
```

### 3.2 配置 Waline 服务器地址

编辑文件：`docs/.vitepress/theme/components/WalineComment.vue`

找到第 **18** 行左右：
```javascript
serverURL: 'YOUR_WALINE_SERVER_URL',
```

替换为你的 Waline 地址：
```javascript
serverURL: 'https://cncompany-waline.vercel.app', // 替换为你实际的地址
```

### 3.3 本地测试（可选）

```bash
# 安装依赖
npm install

# 启动开发服务器
npm run docs:dev

# 访问 http://localhost:5173
```

检查评论区是否正常显示。

### 3.4 提交代码到 GitHub

```bash
# 添加所有修改
git add .

# 提交修改
git commit -m "Configure Waline comment system"

# 推送到 GitHub
git push
```

#### 遇到推送权限问题？

如果遇到 `Permission denied` 错误，选择以下方法之一：

**方法 1：使用 GitHub CLI（推荐）**
```bash
# 安装 GitHub CLI：https://cli.github.com/
gh auth login
git push
```

**方法 2：使用 Personal Access Token**
1. 访问 https://github.com/settings/tokens
2. 生成新 Token（勾选 `repo` 权限）
3. 使用 Token 推送：
```bash
git remote set-url origin https://你的Token@github.com/你的用户名/CNCompanyReviews.git
git push
```

**方法 3：使用 SSH**
```bash
# 生成 SSH 密钥
ssh-keygen -t ed25519 -C "your_email@example.com"

# 添加到 GitHub：https://github.com/settings/keys
# 修改远程地址
git remote set-url origin git@github.com:你的用户名/CNCompanyReviews.git
git push
```

### 3.5 在 Vercel 部署前端

1. 访问 [Vercel](https://vercel.com/dashboard)
2. 点击 **"Add New..."** → **"Project"**
3. 导入你的 GitHub 仓库 `CNCompanyReviews`
4. Vercel 会自动检测到 VitePress 框架
5. 点击 **"Deploy"**
6. 等待 2-3 分钟部署完成

部署成功后，你会得到一个访问地址，如：
```
https://cncompany-reviews.vercel.app
```

---

## ✅ 第四步：验证部署

### 4.1 访问网站测试

1. 打开你的 Vercel 网站地址
2. 检查首页是否正常显示
3. 检查免责声明和提交指南区块
4. 检查城市列表是否正常

### 4.2 测试评论功能

1. 滚动到页面底部的"匿名评论区"
2. 确认评论组件正常加载
3. 发布一条测试评论（无需登录）
4. 刷新页面，确认评论显示

### 4.3 验证后台管理

1. 访问 `https://你的waline.vercel.app/ui`
2. 登录管理员账号
3. 查看是否收到测试评论
4. 尝试回复或删除评论

---

## 🔒 第五步：安全加固（可选但推荐）

### 5.1 配置自定义域名

在 Vercel 项目设置中可以绑定自定义域名：
- 更专业的外观
- 更难被追踪

### 5.2 配置评论审核

在 Waline 后台可以设置：
- 敏感词过滤
- 评论审核（新评论需要审核后才显示）
- IP 黑名单

### 5.3 定期备份数据

定期从 LeanCloud 导出数据备份：
1. 进入 LeanCloud 控制台
2. 数据存储 → 导出数据
3. 下载备份文件

---

## 🆘 常见问题排查

### 问题 1：评论区不显示

**可能原因**：
- Waline 服务器地址配置错误
- 浏览器缓存问题
- Waline 后端服务异常

**解决方法**：
1. 检查 `WalineComment.vue` 中的 `serverURL` 是否正确
2. 清除浏览器缓存并刷新（Ctrl + Shift + R）
3. 打开浏览器控制台（F12）查看错误信息
4. 访问 `https://你的waline.vercel.app` 检查服务是否正常

### 问题 2：评论无法提交

**错误信息**：`500 Internal Server Error` 或 `Not initialized`

**解决方法**：
1. 访问 Vercel Dashboard → 找到 Waline 项目
2. 进入 **Settings** → **Environment Variables**
3. 确认 4 个环境变量都已正确配置：
   - `LEAN_ID`
   - `LEAN_KEY`
   - `LEAN_MASTER_KEY`
   - `LEAN_SERVER`
4. 如果缺少变量，添加后重新部署：
   - 进入 **Deployments** 标签
   - 点击最新部署的 **"···"** 菜单
   - 选择 **"Redeploy"**

### 问题 3：Vercel 前端部署失败

**可能原因**：
- 代码有语法错误
- 依赖安装失败
- Waline 配置未完成

**解决方法**：
1. 查看 Vercel 部署日志
2. 本地运行 `npm run docs:build` 检查是否有错误
3. 确认 `WalineComment.vue` 中的 `serverURL` 已正确配置

### 问题 4：推送代码到 GitHub 失败

**错误信息**：`Permission denied (publickey)`

**解决方法**：参考上面 "3.4 提交代码到 GitHub" 部分的解决方案。

### 问题 5：页面样式显示异常

**解决方法**：
1. 清除浏览器缓存
2. 检查 `docs/.vitepress/theme/custom.css` 是否正确引入
3. 查看浏览器控制台 CSS 错误
4. 重新构建并部署

---

## 📝 日常维护

### 管理评论

1. 访问 `https://你的waline.vercel.app/ui`
2. 登录管理员账号
3. 可以：
   - 删除垃圾评论和广告
   - 置顶重要评论
   - 审核待审评论
   - 回复用户评论

### 整理评论到正文

1. 定期查看评论区高赞内容
2. 将可靠的爆料整理到对应城市的 Markdown 文件
3. 提交 Git 更新：

```bash
cd CNCompanyReviews
git add .
git commit -m "整理评论内容"
git push
```

### 维护时间表

**每周任务**：
- 查看 Waline 后台新评论
- 删除垃圾评论
- 整理高质量评论到 Markdown

**每月任务**：
- 备份 LeanCloud 数据
- 检查 Vercel 部署状态
- 更新依赖包（可选）

---

## 🔐 隐私保护建议

### 身份隔离

1. ✅ 使用专门的邮箱注册所有服务
2. ✅ 不要在社交媒体用真实身份推广
3. ❌ 不要用公司邮箱或真实姓名

### 操作安全

1. ✅ 使用 VPN 或 Tor 浏览器
2. ✅ 不要在公司网络操作
3. ✅ 截图前去除所有水印和元数据
4. ❌ 不要在可追踪设备上操作

### 内容审核

1. ✅ 及时删除包含个人隐私的评论
2. ✅ 提醒用户去除截图水印
3. ✅ 审核可能引发法律纠纷的内容
4. ❌ 不要发布包含真实姓名、工号的内容

---

## 💰 成本说明

所有服务完全免费：
- ✅ GitHub：免费托管代码
- ✅ Vercel：免费托管网站和 Waline 后端
- ✅ LeanCloud 国际版：免费数据库（开发版）

**总成本**：0 元

**预计配置时间**：20-30 分钟

**维护时间**：每周约 10-30 分钟

---

## 📞 获取帮助

- **GitHub Issues**：[提交问题](https://github.com/Students-Light/CNCompanyReviews/issues)
- **Waline 官方文档**：https://waline.js.org/
- **VitePress 文档**：https://vitepress.dev/
- **LeanCloud 文档**：https://docs.leancloud.app/

---

## 📚 相关文档

- **README.md**：项目介绍和功能说明
- **CHECKLIST.md**：部署检查清单（推荐打印使用）
- **QUICK_REFERENCE.md**：快速参考卡（包含所有关键信息）

---

🎉 **恭喜！** 如果你完成了所有步骤，你的企业避雷平台已成功上线！

记住：**保护好自己的隐私是第一位的！**

让每一个打工人都能避开职场深坑！💪
