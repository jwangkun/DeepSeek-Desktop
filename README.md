# DeepSeek Desktop

<div align="center">

![DeepSeek Desktop](./deepseek-logo.png)

**🚀 基于 Pake 技术的 DeepSeek Chat 桌面应用**

[![Build Status](https://github.com/jwangkun/DeepSeek-Desktop/workflows/Build%20DeepSeek%20Desktop%20with%20Pake/badge.svg)](https://github.com/jwangkun/DeepSeek-Desktop/actions)
[![Release](https://img.shields.io/github/v/release/jwangkun/DeepSeek-Desktop)](https://github.com/jwangkun/DeepSeek-Desktop/releases)
[![License](https://img.shields.io/github/license/jwangkun/DeepSeek-Desktop)](./LICENSE)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Windows-blue)](#下载)

</div>

## 📖 简介

DeepSeek Desktop 是一个基于 [Pake](https://github.com/tw93/Pake) 技术构建的 DeepSeek Chat 桌面应用程序。它将 DeepSeek Chat 网页版打包成原生桌面应用，提供更好的用户体验和系统集成。

### ✨ 特性

- 🎯 **原生体验** - 真正的桌面应用，不是简单的网页包装
- 🚀 **轻量级** - 基于 Tauri 技术，体积小巧，性能优异
- 🔒 **安全可靠** - 本地运行，数据安全有保障
- 🌍 **跨平台** - 支持 macOS 和 Windows 系统
- 🎨 **现代界面** - 隐藏标题栏，提供沉浸式体验
- ⚡ **快速启动** - 比浏览器访问更快的启动速度

## 📥 下载

### 最新版本

前往 [Releases](https://github.com/jwangkun/DeepSeek-Desktop/releases) 页面下载最新版本：

| 平台 | 文件 | 说明 |
|------|------|------|
| 🍎 **macOS** | `DeepSeek-Desktop-macOS.dmg` | 适用于 macOS 10.15+ |
| 🪟 **Windows** | `DeepSeek-Desktop-Windows.exe` | NSIS 安装程序（推荐） |
| 🪟 **Windows** | `DeepSeek-Desktop-Windows.msi` | Windows Installer 格式 |

### 安装说明

#### macOS
1. 下载 `.dmg` 文件
2. 双击打开，将应用拖拽到 Applications 文件夹
3. 首次运行可能需要在系统偏好设置中允许运行

#### Windows
1. 下载 `.exe` 或 `.msi` 文件
2. 右键以管理员身份运行安装程序
3. 按照安装向导完成安装

## 🛠️ 开发

### 环境要求

- Node.js 18+
- Rust (最新稳定版)
- Pake CLI

### 本地构建

```bash
# 克隆仓库
git clone https://github.com/jwangkun/DeepSeek-Desktop.git
cd DeepSeek-Desktop

# 安装依赖
npm install

# 安装 Pake CLI
npm install -g pake-cli@latest

# 构建应用
npm run build

# 平台特定构建
npm run build:mac     # macOS
npm run build:windows # Windows
```

### 项目结构

```
DeepSeek-Desktop/
├── .github/workflows/    # GitHub Actions 工作流
├── app.iconset/         # 应用图标资源
├── app.icns            # macOS 图标
├── deepseek-logo.png   # 应用 Logo
├── pake.json          # Pake 配置文件
├── package.json       # 项目配置
└── README.md         # 项目说明
```

## 🔧 配置

### Pake 配置

项目使用 `pake.json` 文件进行配置：

```json
{
  "url": "https://chat.deepseek.com",
  "name": "DeepSeek Chat",
  "icon": "./app.iconset/icon_256x256.png",
  "width": 950,
  "height": 700,
  "hide_title_bar": true,
  "fullscreen": false,
  "resizable": true
}
```

### 自定义构建

你可以通过修改配置文件来自定义应用：

- **URL**: 更改要打包的网站地址
- **名称**: 修改应用显示名称
- **图标**: 替换应用图标
- **窗口大小**: 调整默认窗口尺寸

## 🚀 CI/CD

项目使用 GitHub Actions 进行自动化构建和发布：

- **自动构建** - 推送到主分支时自动触发构建
- **多平台支持** - 同时构建 macOS 和 Windows 版本
- **自动发布** - 构建成功后自动创建 GitHub Release
- **版本管理** - 自动递增版本号

### 手动触发构建

1. 前往 [Actions](https://github.com/jwangkun/DeepSeek-Desktop/actions) 页面
2. 选择 "Build DeepSeek Desktop with Pake" 工作流
3. 点击 "Run workflow" 按钮
4. 可选择自定义 URL 和应用名称

## 📄 许可证

本项目基于 [MIT License](./LICENSE) 开源。

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

### 贡献指南

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 创建 Pull Request

## 🙏 致谢

- [DeepSeek](https://www.deepseek.com/) - 提供优秀的 AI 对话服务
- [Pake](https://github.com/tw93/Pake) - 优秀的网页打包工具
- [Tauri](https://tauri.app/) - 现代桌面应用开发框架

## 📞 支持

如果你遇到问题或有建议，请：

1. 查看 [Issues](https://github.com/jwangkun/DeepSeek-Desktop/issues) 页面
2. 创建新的 Issue 描述问题
3. 或者发送邮件联系维护者

---

<div align="center">

**⭐ 如果这个项目对你有帮助，请给个 Star！**

Made with ❤️ by [jwangkun](https://github.com/jwangkun)

</div>