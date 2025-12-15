# 🚀 Waline 部署配置指南

## 📋 你的 LeanCloud 配置信息

已从 LeanCloud 获取以下配置（请妥善保管）：

```
AppID:     gHzOU1xlSmFJGxQXPKVKd2Os-MdYXbMMI
AppKey:    fNuSL2di3ZSHUPuGH7Kfgx3G
MasterKey: fTgL1N5roCuXkmEa6sDx2cyE
服务器:    https://ghzou1xl.api.lncldglobal.com
```

⚠️ **安全提醒**：MasterKey 拥有最高权限，请勿泄露给他人！

---

## 🎯 第一步：部署 Waline 后端到 Vercel

### 1.1 点击部署链接

点击此链接一键部署 Waline：
[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample)

### 1.2 登录 Vercel

- 如果没有账号，可以直接用 GitHub 账号登录
- 建议使用新建的匿名 GitHub 账号以保护隐私

### 1.3 配置项目

**Repository Name（仓库名称）**：
```
cncompany-waline
```

### 1.4 配置环境变量（重要！）

在 **Environment Variables（环境变量）** 部分，添加以下 4 个变量：

| 变量名 | 值 |
|--------|-----|
| `LEAN_ID` | `gHzOU1xlSmFJGxQXPKVKd2Os-MdYXbMMI` |
| `LEAN_KEY` | `fNuSL2di3ZSHUPuGH7Kfgx3G` |
| `LEAN_MASTER_KEY` | `fTgL1N5roCuXkmEa6sDx2cyE` |
| `LEAN_SERVER` | `https://ghzou1xl.api.lncldglobal.com` |

**具体操作**：
1. 点击 "Add Environment Variable"
2. 在 "Key" 输入变量名（如 `LEAN_ID`）
3. 在 "Value" 输入对应的值（如 `gHzOU1xlSmFJGxQXPKVKd2Os-MdYXbMMI`）
4. 点击 "Add" 添加
5. 重复以上步骤添加所有 4 个变量

### 1.5 开始部署

1. 确认所有环境变量已添加
2. 点击 **"Deploy"** 按钮
3. 等待 1-2 分钟，直到看到 "Congratulations!"

### 1.6 获取 Waline 服务器地址

部署成功后，你会看到一个地址，类似：
```
https://cncompany-waline.vercel.app
```

或者

```
https://cncompany-waline-你的用户名.vercel.app
```

**记下这个地址！** 这是你的 Waline 评论系统后端地址。

---

## 🔐 第二步：注册 Waline 管理员账号

### 2.1 访问注册页面

在浏览器中访问：
```
https://你的waline地址.vercel.app/ui/register
```

例如：
```
https://cncompany-waline.vercel.app/ui/register
```

### 2.2 注册管理员

1. 填写邮箱（可以使用隐私邮箱）
2. 设置密码
3. 点击 "注册"

⚠️ **重要**：第一个注册的用户自动成为管理员！

### 2.3 登录管理后台

访问：
```
https://你的waline地址.vercel.app/ui
```

使用刚才注册的账号登录，即可管理所有评论。

---

## 🌐 第三步：配置前端网站

### 3.1 修改 Waline 服务器地址

**文件位置**：
```
C:\Users\hhn\Desktop\CNCompanyReviews\docs\.vitepress\theme\components\WalineComment.vue
```

**需要修改的内容**：

找到第 **18** 行左右：
```javascript
serverURL: 'YOUR_WALINE_SERVER_URL',
```

替换为你的 Waline 地址：
```javascript
serverURL: 'https://cncompany-waline.vercel.app', // 替换为你实际的地址
```

**完整示例**：
```javascript
init({
  el: '#waline-comment',
  serverURL: 'https://cncompany-waline.vercel.app', // ← 修改这里
  placeholder: '💬 匿名爆料...（请注意去除图片中的隐私水印）',
  dark: 'auto',
  // ... 其他配置
})
```

### 3.2 保存并提交代码

在命令行中执行：
```bash
cd CNCompanyReviews

# 添加所有修改
git add .

# 提交修改
git commit -m "Configure Waline with LeanCloud"

# 推送到 GitHub
git push
```

---

## 📦 第四步：部署前端到 Vercel

### 4.1 登录 Vercel

访问：https://vercel.com/dashboard

### 4.2 导入 GitHub 仓库

1. 点击 **"Add New..."** → **"Project"**
2. 选择 **"Import Git Repository"**
3. 找到你的 `CNCompanyReviews` 仓库
4. 点击 **"Import"**

### 4.3 配置项目

Vercel 会自动检测到 VitePress 框架，无需额外配置。

确认以下信息：
- **Framework Preset**: VitePress
- **Build Command**: `npm run docs:build`
- **Output Directory**: `docs/.vitepress/dist`

### 4.4 开始部署

1. 点击 **"Deploy"** 按钮
2. 等待 2-3 分钟
3. 部署成功后会显示你的网站地址

你的网站地址类似：
```
https://cn-company-reviews.vercel.app
```

---

## ✅ 第五步：测试验证

### 5.1 访问网站

在浏览器中打开你的网站地址。

### 5.2 检查页面元素

- ✅ 免责声明是否显示
- ✅ 提交指南是否显示
- ✅ 城市列表是否正常
- ✅ 页面样式是否正常

### 5.3 测试评论功能

1. 滚动到页面底部的 "匿名评论区"
2. 评论框是否正常显示
3. 输入测试内容：`测试评论`
4. 点击 "提交"
5. 评论是否成功发布

### 5.4 验证后台

1. 访问 Waline 管理后台：`https://你的waline.vercel.app/ui`
2. 登录管理员账号
3. 检查是否能看到刚才发布的测试评论
4. 尝试回复或删除评论

---

## 🎉 完成！

如果以上所有步骤都成功，恭喜你！你的企业避雷平台已经成功上线！

### 你的项目信息

- **网站地址**：`https://________________.vercel.app`
- **Waline 后台**：`https://cncompany-waline.vercel.app/ui`
- **数据库**：LeanCloud 国际版

### 下一步

1. **删除测试评论**：在 Waline 后台删除测试数据
2. **匿名推广**：在 V2EX、Telegram 等平台分享
3. **定期维护**：每周查看评论，删除垃圾内容

---

## 🔧 常见问题排查

### 问题 1：评论区不显示

**可能原因**：
- Waline 服务器地址配置错误
- 浏览器缓存问题

**解决方法**：
1. 检查 `WalineComment.vue` 中的 `serverURL` 是否正确
2. 清除浏览器缓存并刷新
3. 打开浏览器控制台（F12）查看错误信息

### 问题 2：评论无法提交

**可能原因**：
- LeanCloud 环境变量配置错误
- Waline 后端服务异常

**解决方法**：
1. 登录 Vercel，检查 Waline 项目的环境变量
2. 查看 Vercel 部署日志是否有错误
3. 访问 `https://你的waline.vercel.app` 检查服务是否正常

### 问题 3：Vercel 部署失败

**可能原因**：
- 代码有语法错误
- 依赖安装失败

**解决方法**：
1. 查看 Vercel 部署日志
2. 本地运行 `npm run docs:build` 检查是否有错误
3. 确认 `package.json` 配置正确

---

## 📞 获取帮助

- **GitHub Issues**：https://github.com/Students-Light/CNCompanyReviews/issues
- **Waline 文档**：https://waline.js.org/
- **LeanCloud 文档**：https://docs.leancloud.app/

---

**总配置时间**：20-30 分钟
**总成本**：0 元（全部免费）

祝你部署顺利！🚀
