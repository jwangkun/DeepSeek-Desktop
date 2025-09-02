# Pake 构建故障排除指南

## 常见问题及解决方案

### 1. GitHub Actions 构建失败

#### 问题 1: `src-tauri` 目录不存在
**错误信息**: `The directory /path/to/src-tauri does not exist`
**解决方案**: 这是正常的，因为我们使用 Pake CLI 而不是开发 Tauri 应用。新的工作流已经移除了 `src-tauri` 相关配置。

#### 问题 2: 缺少依赖锁定文件
**错误信息**: `Dependencies lock file is not found`
**解决方案**:
```bash
# 生成 package-lock.json
npm install

# 或使用 yarn 生成 yarn.lock
yarn install

# 然后提交锁定文件
git add package-lock.json
git commit -m "Add package-lock.json"
```

### 2. 依赖安装失败
**问题**: `npm install -g pake-cli` 失败
**解决方案**:
```bash
# 使用 yarn 替代
yarn global add pake-cli

# 或者使用 npx
npx pake-cli --version

# 清除 npm 缓存后重试
npm cache clean --force
npm install -g pake-cli@latest
```

### 3. Rust 编译错误
**问题**: Rust 工具链问题
**解决方案**:
```bash
# 更新 Rust
rustup update stable
rustup default stable

# 添加必要的 target
rustup target add x86_64-unknown-linux-gnu
```

### 3. 系统依赖缺失 (Linux)
**问题**: 缺少系统库
**解决方案**:
```bash
sudo apt-get update
sudo apt-get install -y \
  libgtk-3-dev \
  libwebkit2gtk-4.0-dev \
  libappindicator3-dev \
  librsvg2-dev \
  patchelf \
  libssl-dev \
  pkg-config
```

### 4. macOS 代码签名问题
**问题**: 应用无法在 macOS 上运行
**解决方案**:
- 在 GitHub Actions 中添加代码签名步骤
- 或者在本地构建时禁用代码签名验证

### 5. 图标文件问题
**问题**: 图标无法加载
**解决方案**:
- 确保图标文件存在: `./app.iconset/icon_256x256.png`
- 图标格式应为 PNG
- 推荐尺寸: 256x256, 512x512, 1024x1024

### 6. URL 访问问题
**问题**: 目标网站无法访问
**解决方案**:
- 确保 URL 可以公开访问
- 检查 CORS 设置
- 考虑使用 `--disable-web-security` 参数

## 调试技巧

1. **启用调试模式**:
   ```bash
   pake "https://your-url.com" --debug
   ```

2. **查看详细日志**:
   ```bash
   pake "https://your-url.com" --verbose
   ```

3. **测试本地构建**:
   ```bash
   # 先在本地测试
   npm run build
   ```

## GitHub Actions 特定问题

1. **权限问题**: 确保 `GITHUB_TOKEN` 有足够权限
2. **缓存问题**: 清除 Rust 和 Node.js 缓存
3. **超时问题**: 增加构建超时时间
4. **平台特定问题**: 使用 matrix 策略分别处理不同平台

## 推荐的构建命令

```bash
# 基础构建
pake "https://chat.deepseek.com" --name "DeepSeek-Desktop"

# 完整配置
pake "https://chat.deepseek.com" \
  --name "DeepSeek-Desktop" \
  --icon "./app.iconset/icon_256x256.png" \
  --width 1200 \
  --height 800 \
  --targets deb,appimage,dmg \
  --transparent \
  --resize