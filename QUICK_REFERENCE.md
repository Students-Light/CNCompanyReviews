# 📌 快速部署参考卡

**打印或保存本页，包含所有关键信息！**

---

## 🔑 你的配置信息

### LeanCloud 凭证
```
AppID:     gHzOU1xlSmFJGxQXPKVKd2Os-MdYXbMMI
AppKey:    fNuSL2di3ZSHUPuGH7Kfgx3G
MasterKey: fTgL1N5roCuXkmEa6sDx2cyE
服务器:    https://ghzou1xl.api.lncldglobal.com
```

⚠️ **MasterKey 需保密！不要公开分享！**

---

## 🚀 三步部署流程

### 步骤 1️⃣：部署 Waline 后端

**操作**：点击 → https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample

**配置环境变量**（在 Vercel 部署页面添加）：
| Key | Value |
|-----|-------|
| `LEAN_ID` | `gHzOU1xlSmFJGxQXPKVKd2Os-MdYXbMMI` |
| `LEAN_KEY` | `fNuSL2di3ZSHUPuGH7Kfgx3G` |
| `LEAN_MASTER_KEY` | `fTgL1N5roCuXkmEa6sDx2cyE` |
| `LEAN_SERVER` | `https://ghzou1xl.api.lncldglobal.com` |

**结果**：获得 Waline 地址（如 `https://xxx.vercel.app`）

---

### 步骤 2️⃣：修改前端配置

**文件**：`docs/.vitepress/theme/components/WalineComment.vue`

**修改位置**：第 18 行左右

**查找**：
```javascript
serverURL: 'YOUR_WALINE_SERVER_URL',
```

**替换为**：
```javascript
serverURL: 'https://你的waline地址.vercel.app',
```

**提交代码**：
```bash
cd CNCompanyReviews
git add .
git commit -m "Configure Waline server"
git push
```

---

### 步骤 3️⃣：部署前端到 Vercel

1. 访问：https://vercel.com/dashboard
2. 点击 "New Project"
3. 导入 `CNCompanyReviews` 仓库
4. 点击 "Deploy"

**结果**：获得网站地址（如 `https://xxx.vercel.app`）

---

## ✅ 验证测试

1. **访问网站** → 检查页面显示
2. **测试评论** → 在底部发布测试评论
3. **登录后台** → `https://你的waline.vercel.app/ui`
4. **检查评论** → 确认评论已保存

---

## 📁 关键文件位置

| 文件 | 路径 | 用途 |
|------|------|------|
| Waline 组件 | `docs/.vitepress/theme/components/WalineComment.vue` | 评论系统配置 |
| 自定义样式 | `docs/.vitepress/theme/custom.css` | 页面样式 |
| 首页 | `docs/index.md` | 主页内容 |
| VitePress 配置 | `docs/.vitepress/config.mts` | 站点配置 |

---

## 🔧 常用命令

```bash
# 本地开发
cd CNCompanyReviews
npm install
npm run docs:dev        # 访问 http://localhost:5173

# 构建测试
npm run docs:build

# 提交代码
git add .
git commit -m "更新内容"
git push
```

---

## 🔐 安全注意事项

- ✅ 使用隐私邮箱（ProtonMail、Tutanota）
- ✅ 使用 VPN 或 Tor 浏览器
- ✅ 不要用真实身份推广项目
- ✅ 定期备份 LeanCloud 数据
- ❌ 不要泄露 MasterKey
- ❌ 不要在公司网络操作

---

## 📞 常用链接

| 服务 | 链接 |
|------|------|
| LeanCloud 控制台 | https://console.leancloud.app/ |
| Vercel 控制台 | https://vercel.com/dashboard |
| Waline 管理后台 | `https://你的waline.vercel.app/ui` |
| 你的网站 | `https://你的项目.vercel.app` |
| GitHub 仓库 | https://github.com/你的用户名/CNCompanyReviews |

---

## 🆘 问题排查

### 评论区不显示
1. 检查 `serverURL` 配置是否正确
2. 清除浏览器缓存
3. 按 F12 查看控制台错误

### 评论无法提交
1. 检查 Vercel 环境变量
2. 访问 Waline 地址测试服务
3. 查看 Vercel 部署日志

### 页面样式异常
1. 清除浏览器缓存
2. 检查 `custom.css` 是否正确
3. 重新构建并部署

---

## 📝 日常维护

### 每周任务
- [ ] 登录 Waline 后台查看新评论
- [ ] 删除垃圾评论和广告
- [ ] 整理优质评论到 Markdown 文件

### 每月任务
- [ ] 备份 LeanCloud 数据
- [ ] 检查 Vercel 服务状态
- [ ] 更新项目依赖（可选）

---

## 💡 完整文档索引

详细信息请查看以下文档：

1. **WALINE_DEPLOYMENT.md** - Waline 详细部署指南
2. **DEPLOYMENT.md** - 完整部署教程
3. **SETUP.md** - 快速配置向导
4. **CHECKLIST.md** - 部署检查清单
5. **PROJECT_SUMMARY.md** - 项目总结

---

## 🎯 快速命令速查

```bash
# 克隆项目
git clone https://github.com/你的用户名/CNCompanyReviews.git
cd CNCompanyReviews

# 安装依赖
npm install

# 本地预览
npm run docs:dev

# 构建项目
npm run docs:build

# 提交修改
git add .
git commit -m "更新内容"
git push

# 查看 Git 状态
git status

# 查看最近提交
git log --oneline -5
```

---

**总成本**：💰 0 元（完全免费）

**部署时间**：⏱️ 20-30 分钟

**维护时间**：⏱️ 每周 10-30 分钟

---

**保存此页面以便随时查阅！** 📌
