# 🚨 中国公司避雷指南 (CN Company Reviews)

> 匿名互助，拒绝踩坑 - 打工人的企业黑名单数据库

[![部署状态](https://img.shields.io/badge/status-active-success)](https://cncompany.vercel.app)
[![许可证](https://img.shields.io/badge/license-MIT-blue)](LICENSE)
[![贡献欢迎](https://img.shields.io/badge/contributions-welcome-brightgreen)](CONTRIBUTING.md)

## 📖 项目简介

这是一个由打工人自发维护的**企业避雷平台**，收集整理各大城市的不良企业信息，帮助求职者避免踩坑。

### ✨ 核心特性

- 🔒 **完全匿名**：无需登录，匿名评论
- 🌍 **覆盖全国**：15+ 个主要城市的企业信息
- 💬 **实时评论**：基于 Waline 的匿名评论系统
- 🎯 **开源透明**：所有数据公开在 GitHub
- 💰 **零成本运营**：完全基于免费服务搭建

## 🌐 访问地址

- **主站**：[https://cncompany.vercel.app](https://cn-company-reviews.vercel.app/)
- **GitHub**：[https://github.com/Students-Light/CNCompanyReviews](https://github.com/Students-Light/CNCompanyReviews)

## 📋 已收录城市

| 华南 | 华东 | 华北 | 华中 |
|------|------|------|------|
| [广州](./广州.md) | [上海](./上海.md) | [北京](./北京.md) | [武汉](./武汉.md) |
| [深圳](./深圳.md) | [杭州](./杭州.md) | [济南](./济南.md) | [长沙](./长沙.md) |
| [珠海](./珠海.md) | [南京](./南京.md) | [青岛](./青岛.md) | |
| [东莞](./东莞.md) | [厦门](./厦门.md) | | |
| [佛山](./佛山.md) | | | |
| [中山](./中山.md) | | | |

## 🚀 快速开始

### 方式一：在线爆料（推荐）

1. 访问 [网站首页]((https://cn-company-reviews.vercel.app/))
2. 滚动到页面底部的"匿名评论区"
3. 直接留言，格式：`【城市名】公司名 - 避坑理由`
4. 无需登录，完全匿名

### 方式二：提交 Pull Request

如果你熟悉 GitHub：

```bash
# 1. Fork 本仓库

# 2. Clone 到本地
git clone https://github.com/你的用户名/CNCompanyReviews.git
cd CNCompanyReviews

# 3. 编辑对应城市的 Markdown 文件
# 例如：编辑 广州.md

# 4. 提交修改
git add .
git commit -m "添加某公司避雷信息"
git push

# 5. 在 GitHub 创建 Pull Request
```

## 💻 本地开发

### 环境要求

- Node.js 18+
- npm 或 pnpm

### 安装依赖

```bash
npm install
```

### 启动开发服务器

```bash
npm run docs:dev
```

访问 `http://localhost:5173`

### 构建生产版本

```bash
npm run docs:build
```

## 🔧 技术栈

- **框架**：[VitePress](https://vitepress.dev/) - 静态站点生成器
- **评论系统**：[Waline](https://waline.js.org/) - 开源评论系统
- **数据库**：[LeanCloud](https://www.leancloud.app/) - 国际版数据存储
- **部署**：[Vercel](https://vercel.com) - 边缘网络托管

## 📝 贡献指南

### 内容要求

1. **真实性**：仅提交亲身经历或可靠证据
2. **隐私保护**：去除所有可能暴露身份的信息（姓名、工号、水印等）
3. **客观性**：描述事实，避免情绪化表达
4. **格式规范**：参考现有条目格式

### 什么内容会被拒绝？

❌ 无法验证的传闻
❌ 包含个人攻击
❌ 广告或营销内容
❌ 包含敏感隐私信息

## 🛡️ 免责声明

- 本平台仅提供技术存储，不对内容真实性负责
- 所有评论由用户匿名发布，不代表平台立场
- 使用者需自行判断信息可信度
- 如有法律纠纷，责任由发布者承担

## 🔐 隐私保护建议

如果你是项目维护者或爆料人：

1. ✅ 使用隐私邮箱（ProtonMail、Tutanota）
2. ✅ 通过 VPN 或 Tor 访问
3. ✅ 截图前去除所有水印和元数据
4. ✅ 不要在公司网络操作
5. ❌ 不要用真实身份推广此项目

## 📦 部署自己的版本

如果你想 Fork 并部署自己的版本，请查看 [部署指南](DEPLOYMENT.md)。

完整步骤包括：
1. 注册 LeanCloud 国际版（数据库）
2. 部署 Waline 到 Vercel（评论后端）
3. 部署前端到 Vercel
4. 配置环境变量

**总成本**：0 元（全部使用免费服务）

## 🤝 维护团队

本项目由匿名维护者运营，如需联系：

- **GitHub Issues**：[提交问题](https://github.com/Students-Light/CNCompanyReviews/issues)
- **评论区置顶**：在网站评论区留言

## 📄 许可证

[MIT License](LICENSE) - 欢迎自由使用和修改

---

**⚠️ 重要提醒**：使用本平台即表示你已阅读并同意免责声明。爆料时请保护好自己的隐私，不要因为维权而暴露身份信息。

**💪 一起努力**：让每一个打工人都能避开职场深坑！
