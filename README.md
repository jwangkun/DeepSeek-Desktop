# 🚀 DeepSeek-Desktop

> **免费开源的 DeepSeek Chat 桌面客户端，告别套壳收费软件！**

[![Build Status](https://github.com/yourusername/DeepSeek-Desktop/workflows/Build%20DeepSeek%20Chat%20App/badge.svg)](https://github.com/yourusername/DeepSeek-Desktop/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-blue.svg)](https://github.com/yourusername/DeepSeek-Desktop/releases)
[![Downloads](https://img.shields.io/github/downloads/yourusername/DeepSeek-Desktop/total.svg)](https://github.com/yourusername/DeepSeek-Desktop/releases)

## 📖 项目介绍

随着 DeepSeek AI 的广泛应用，市场上出现了大量**收费的套壳桌面客户端**，这些应用往往：
- 💰 **收费使用**：明明免费的服务却要付费
- 📢 **广告骚扰**：内置大量广告影响使用体验  
- 🔒 **功能限制**：人为限制功能诱导付费
- ⚠️ **安全风险**：来源不明，可能存在隐私泄露

**DeepSeek-Desktop** 就是为了解决这些痛点而诞生的！

### ✨ 我们的承诺

- 🆓 **完全免费** - 永久免费使用，无任何收费功能
- 🚫 **零广告** - 纯净体验，无任何广告内容
- 🔓 **开源透明** - 所有代码开源，安全可信
- 🎯 **专注体验** - 专注于提供最佳的 DeepSeek Chat 桌面体验

## 🌟 产品特性

### 🏃‍♂️ 极致性能
- **超轻量级**：仅 5-20MB，比 Electron 应用小 20 倍
- **闪电启动**：基于 Rust + Tauri，启动速度极快
- **低内存占用**：资源占用极小，不影响系统性能

### 🎨 用户体验
- **官方图标**：使用 DeepSeek 官方风格图标
- **完美尺寸**：950x700 像素，符合主流桌面应用标准
- **沉浸体验**：隐藏标题栏，提供原生应用感受
- **跨平台支持**：支持 Windows、macOS、Linux

### 🛡️ 安全可靠
- **开源代码**：所有源码开放，接受社区监督
- **无隐私收集**：不收集任何用户数据
- **定期更新**：持续维护和功能改进

## 📥 快速下载

### 直接下载（推荐）
前往 [Releases 页面](https://github.com/yourusername/DeepSeek-Desktop/releases) 下载最新版本：

| 平台 | 文件格式 | 大小 |
|------|----------|------|
| 🪟 Windows | `.exe` | ~15MB |
| 🍎 macOS | `.dmg` | ~8MB |
| 🐧 Linux | `.deb` / `.AppImage` | ~12MB |

### 包管理器安装

**macOS (Homebrew)**
```bash
# 即将支持
brew install --cask deepseek-desktop
```

**Windows (Winget)**
```bash
# 即将支持
winget install DeepSeek-Desktop
```

**Linux (Snap)**
```bash
# 即将支持
sudo snap install deepseek-desktop
```

## 🛠️ 自行构建

### 环境要求
- Node.js >= 18
- Rust >= 1.89
- pake-cli

### 构建步骤

1. **克隆项目**
```bash
git clone https://github.com/yourusername/DeepSeek-Desktop.git
cd DeepSeek-Desktop
```

2. **安装依赖**
```bash
npm install
npm install -g pake-cli@latest
```

3. **构建应用**

**使用 npm 脚本（推荐）**
```bash
# 构建所有平台
npm run build

# 构建特定平台
npm run build:mac     # macOS
npm run build:linux   # Linux
npm run build:windows # Windows
```

**手动构建**
```bash
# macOS
pake https://chat.deepseek.com --name "DeepSeek Chat" --icon "./app.icns" --hide-title-bar --width 950 --height 700 --targets dmg

# Linux
pake https://chat.deepseek.com --name "DeepSeek Chat" --icon "./deepseek-logo.png" --hide-title-bar --width 950 --height 700 --targets deb,appimage

# Windows
pake https://chat.deepseek.com --name "DeepSeek Chat" --icon "./deepseek-logo.png" --hide-title-bar --width 950 --height 700 --targets msi
```

### 自动化构建

本项目使用 GitHub Actions 自动构建多平台版本：

1. **自动触发**: 推送到 main/master 分支时自动构建
2. **手动触发**: 在 Actions 页面手动运行工作流
3. **支持平台**: 
   - Windows (.msi)
   - macOS (.dmg) 
   - Linux (.deb, .AppImage)

构建完成后，在 Actions 页面的 Artifacts 中下载对应平台的安装包。

## 📋 项目结构

```
DeepSeek-Desktop/
├── .github/workflows/
│   └── build.yml           # GitHub Actions 构建配置
├── app.icns                 # macOS 应用图标
├── deepseek-logo-new.png    # Windows/Linux 应用图标
├── pake.json                # 应用配置文件
└── README.md                # 项目说明文档
```

## 🤝 贡献指南

我们欢迎任何形式的贡献！

### 如何贡献
1. 🍴 Fork 本项目
2. 🌿 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 💾 提交更改 (`git commit -m 'Add some amazing feature'`)
4. 📤 推送分支 (`git push origin feature/amazing-feature`)
5. 🔀 创建 Pull Request

### 贡献方式
- 🐛 **报告 Bug**：发现问题请提交 Issue
- 💡 **功能建议**：有好想法请告诉我们
- 📖 **完善文档**：帮助改进项目文档
- 🧪 **测试反馈**：在不同平台测试并反馈
- 💻 **代码贡献**：直接提交代码改进

## 📄 开源协议

本项目采用 [MIT 协议](LICENSE) 开源，这意味着：
- ✅ 可以自由使用、修改、分发
- ✅ 可以用于商业项目
- ✅ 可以私有化部署
- ⚠️ 需要保留版权声明

## 🙏 致谢

- [Pake](https://github.com/tw93/Pake) - 优秀的网页打包工具
- [Tauri](https://tauri.app/) - 现代化的桌面应用框架
- [DeepSeek](https://chat.deepseek.com/) - 强大的 AI 对话服务
- 所有贡献者和用户的支持

## 📞 联系我们

- 🐛 **问题反馈**：[GitHub Issues](https://github.com/yourusername/DeepSeek-Desktop/issues)
- 💬 **讨论交流**：[GitHub Discussions](https://github.com/yourusername/DeepSeek-Desktop/discussions)
- 📧 **邮件联系**：your-email@example.com

## ⭐ Star History

如果这个项目对你有帮助，请给我们一个 ⭐ Star！

[![Star History Chart](https://api.star-history.com/svg?repos=yourusername/DeepSeek-Desktop&type=Date)](https://star-history.com/#yourusername/DeepSeek-Desktop&Date)

---

<div align="center">

**让 AI 对话回归简单纯净！**

[⬇️ 立即下载](https://github.com/yourusername/DeepSeek-Desktop/releases) • [📖 使用文档](https://github.com/yourusername/DeepSeek-Desktop/wiki) • [💬 加入讨论](https://github.com/yourusername/DeepSeek-Desktop/discussions)

</div>