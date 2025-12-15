# 🔑 推送代码到 GitHub - 操作指南

## 问题说明

Git 显示权限错误：`Permission denied`

这是因为你需要使用正确的 GitHub 账号进行推送。

---

## ✅ 解决方案（选择一种）

### 方案 1️⃣：使用 GitHub CLI（推荐）

```bash
# 安装 GitHub CLI（如果还没安装）
# 访问：https://cli.github.com/

# 登录 GitHub
gh auth login

# 推送代码
cd C:\Users\hhn\Desktop\CNCompanyReviews
git push origin main
```

---

### 方案 2️⃣：使用 Personal Access Token

#### 步骤 1：生成 Token

1. 访问：https://github.com/settings/tokens
2. 点击 **"Generate new token"** → **"Generate new token (classic)"**
3. 设置 Token 名称：`CNCompanyReviews`
4. 勾选权限：`repo`（完整权限）
5. 点击 **"Generate token"**
6. **复制生成的 Token**（只显示一次！）

#### 步骤 2：配置 Git

```bash
cd C:\Users\hhn\Desktop\CNCompanyReviews

# 重新配置远程地址（使用 Token）
git remote set-url origin https://你的Token@github.com/Students-Light/CNCompanyReviews.git

# 推送
git push origin main
```

**示例**：
```bash
# 如果你的 Token 是: ghp_xxxxxxxxxxxxxxxxxxxx
git remote set-url origin https://ghp_xxxxxxxxxxxxxxxxxxxx@github.com/Students-Light/CNCompanyReviews.git
git push origin main
```

---

### 方案 3️⃣：使用 SSH（永久解决）

#### 步骤 1：生成 SSH 密钥

```bash
# 生成密钥
ssh-keygen -t ed25519 -C "your_email@example.com"

# 按三次回车（使用默认设置）
```

#### 步骤 2：添加到 GitHub

```bash
# 复制公钥
cat ~/.ssh/id_ed25519.pub
```

1. 访问：https://github.com/settings/keys
2. 点击 **"New SSH key"**
3. 粘贴公钥内容
4. 点击 **"Add SSH key"**

#### 步骤 3：配置 Git 并推送

```bash
cd C:\Users\hhn\Desktop\CNCompanyReviews

# 修改远程地址为 SSH
git remote set-url origin git@github.com:Students-Light/CNCompanyReviews.git

# 推送
git push origin main
```

---

## 🚀 推送成功后

代码推送成功后，**立即告诉我**，我会帮你继续部署前端到 Vercel！

---

## 💡 快速命令（根据你选择的方案）

### 如果使用 Token：
```bash
cd C:\Users\hhn\Desktop\CNCompanyReviews
git remote set-url origin https://你的Token@github.com/Students-Light/CNCompanyReviews.git
git push origin main
```

### 如果使用 SSH：
```bash
cd C:\Users\hhn\Desktop\CNCompanyReviews
git remote set-url origin git@github.com:Students-Light/CNCompanyReviews.git
git push origin main
```

---

**完成后告诉我："代码已推送"，我会立即继续！** 🎯
