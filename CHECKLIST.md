# ✅ 部署检查清单 (Deployment Checklist)

使用本清单确保所有步骤都已正确完成。

## 📋 准备阶段

- [ ] **隐私保护准备**
  - [ ] 注册隐私邮箱 (ProtonMail / Tutanota)
  - [ ] 启用 VPN 或 Tor 浏览器
  - [ ] 准备匿名身份信息

## 🗄️ 数据库配置 (LeanCloud)

- [ ] **注册 LeanCloud 国际版**
  - [ ] 访问 https://console.leancloud.app/
  - [ ] 使用隐私邮箱注册账号
  - [ ] 创建新应用（选择开发版）

- [ ] **获取数据库凭证**
  - [ ] 复制 `App ID`: __________________
  - [ ] 复制 `App Key`: __________________
  - [ ] 复制 `Master Key`: __________________
  - [ ] 记录服务器地址: https://________.api.lncldglobal.com

## 💬 评论系统部署 (Waline)

- [ ] **部署 Waline 到 Vercel**
  - [ ] 点击 Waline 部署链接
  - [ ] 登录 Vercel 账号
  - [ ] 创建项目（名称: `cncompany-comments`）

- [ ] **配置环境变量**
  - [ ] 添加 `LEAN_ID` = [你的 App ID]
  - [ ] 添加 `LEAN_KEY` = [你的 App Key]
  - [ ] 添加 `LEAN_MASTER_KEY` = [你的 Master Key]
  - [ ] 添加 `LEAN_SERVER` = [LeanCloud 服务器地址]

- [ ] **完成 Waline 部署**
  - [ ] 点击 Deploy
  - [ ] 等待部署完成
  - [ ] 记录 Waline 地址: https://________________.vercel.app

- [ ] **注册管理员账号**
  - [ ] 访问: https://[你的waline].vercel.app/ui/register
  - [ ] 注册第一个账号（自动成为管理员）
  - [ ] 测试登录后台

## 🌐 前端网站部署

- [ ] **Fork 并配置仓库**
  - [ ] Fork https://github.com/Students-Light/CNCompanyReviews
  - [ ] Clone 到本地
  ```bash
  git clone https://github.com/[你的用户名]/CNCompanyReviews.git
  cd CNCompanyReviews
  ```

- [ ] **修改 Waline 配置**
  - [ ] 打开 `docs/.vitepress/theme/components/WalineComment.vue`
  - [ ] 找到第 18 行 `serverURL`
  - [ ] 替换为你的 Waline 地址
  - [ ] 保存文件

- [ ] **本地测试**
  ```bash
  npm install
  npm run docs:dev
  ```
  - [ ] 访问 http://localhost:5173
  - [ ] 检查页面是否正常显示
  - [ ] 检查评论区是否显示（可能显示加载错误，正常）

- [ ] **提交代码**
  ```bash
  git add .
  git commit -m "Configure Waline comment system"
  git push
  ```

- [ ] **部署到 Vercel**
  - [ ] 访问 https://vercel.com
  - [ ] 点击 "New Project"
  - [ ] 导入 GitHub 仓库
  - [ ] 确认自动检测到 VitePress
  - [ ] 点击 "Deploy"
  - [ ] 等待部署完成
  - [ ] 记录网站地址: https://________________.vercel.app

## 🧪 功能测试

- [ ] **访问网站测试**
  - [ ] 打开你的 Vercel 网站地址
  - [ ] 检查首页是否正常显示
  - [ ] 检查免责声明区块是否显示
  - [ ] 检查提交指南区块是否显示
  - [ ] 检查城市列表是否正常

- [ ] **评论系统测试**
  - [ ] 滚动到页面底部评论区
  - [ ] 评论组件是否正常加载
  - [ ] 尝试发布一条匿名评论
  - [ ] 评论是否成功提交
  - [ ] 刷新页面，评论是否显示

- [ ] **后台管理测试**
  - [ ] 访问 Waline 后台
  - [ ] 登录管理员账号
  - [ ] 查看是否收到测试评论
  - [ ] 尝试删除测试评论
  - [ ] 尝试回复评论

## 🎨 可选优化

- [ ] **自定义域名**
  - [ ] 在 Vercel 绑定自定义域名
  - [ ] 配置 DNS 记录

- [ ] **评论审核**
  - [ ] 在 Waline 后台启用评论审核
  - [ ] 配置敏感词过滤

- [ ] **样式定制**
  - [ ] 修改 `custom.css` 调整颜色
  - [ ] 调整免责声明样式
  - [ ] 自定义评论区主题

- [ ] **添加新城市**
  - [ ] 创建新城市的 Markdown 文件
  - [ ] 在 index.md 添加链接
  - [ ] 提交并推送

## 🔐 安全检查

- [ ] **隐私保护**
  - [ ] 确认所有操作都通过 VPN/Tor
  - [ ] 确认未在任何公开场合暴露真实身份
  - [ ] 确认邮箱地址无法追踪到真人

- [ ] **数据备份**
  - [ ] 从 LeanCloud 导出评论数据备份
  - [ ] 保存 Git 仓库的完整副本

- [ ] **免责声明**
  - [ ] 确认首页免责声明正确显示
  - [ ] 确认删除政策清晰明确

## 📢 上线推广

- [ ] **匿名推广**
  - [ ] 在 V2EX 匿名发帖
  - [ ] 在 Telegram 群组分享
  - [ ] 在 Reddit 相关社区分享
  - [ ] ⚠️ 不要在朋友圈/知乎用大号发

- [ ] **GitHub 优化**
  - [ ] 添加项目描述和标签
  - [ ] 固定重要 Issue
  - [ ] 创建 Contributing 指南

## 📊 运营维护

- [ ] **每周检查**
  - [ ] 查看 Waline 后台新评论
  - [ ] 删除垃圾评论和广告
  - [ ] 整理高质量评论到 Markdown

- [ ] **每月维护**
  - [ ] 备份 LeanCloud 数据
  - [ ] 检查 Vercel 部署状态
  - [ ] 更新依赖包（如需要）

---

## ✅ 完成确认

- [ ] 我已完成所有必需步骤
- [ ] 网站可以正常访问
- [ ] 评论系统正常工作
- [ ] 我已做好隐私保护措施
- [ ] 我已阅读并理解免责声明

**完成日期**: ________________

**网站地址**: https://________________.vercel.app

**Waline 地址**: https://________________.vercel.app

---

## 🎉 恭喜！

如果所有项目都已勾选，你的企业避雷平台已成功上线！

**接下来**:
1. 定期查看和管理评论
2. 整理高质量内容到正文
3. 匿名推广，帮助更多打工人

**记住**: 保护好自己的隐私是第一位的！
