# 🚀 立即部署 Waline - 操作指南

## 第一步：部署 Waline 后端（必须先完成）

### 1. 点击下面的按钮开始部署：

**点击这里 → ** [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample)

或者复制此链接到浏览器：
```
https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fwaline%2Fwaline%2Ftree%2Fmain%2Fexample
```

### 2. 登录 Vercel

- 如果已有账号，直接登录
- 如果没有账号，使用 GitHub 账号登录（推荐）

### 3. 配置项目名称

在 "Repository Name" 输入：
```
cncompany-waline
```

### 4. 配置环境变量（重要！）

点击 **"Environment Variables"** 展开，然后添加以下 4 个变量：

#### 变量 1
- **Key**: `LEAN_ID`
- **Value**: `gHzOU1xlSmFJGxQXPKVKd2Os-MdYXbMMI`

#### 变量 2
- **Key**: `LEAN_KEY`
- **Value**: `fNuSL2di3ZSHUPuGH7Kfgx3G`

#### 变量 3
- **Key**: `LEAN_MASTER_KEY`
- **Value**: `fTgL1N5roCuXkmEa6sDx2cyE`

#### 变量 4
- **Key**: `LEAN_SERVER`
- **Value**: `https://ghzou1xl.api.lncldglobal.com`

### 5. 开始部署

- 确认所有 4 个环境变量都已添加
- 点击 **"Deploy"** 按钮
- 等待 1-2 分钟

### 6. 获取 Waline 地址

部署成功后，你会看到类似这样的地址：
```
https://cncompany-waline.vercel.app
```

或者：
```
https://cncompany-waline-你的用户名.vercel.app
```

**请将这个地址复制下来，告诉我！**

---

## 我在等待你完成上述步骤...

完成后，请把 Waline 地址告诉我，格式如：
```
我的 Waline 地址是：https://cncompany-waline.vercel.app
```

然后我会继续帮你完成剩余配置！
