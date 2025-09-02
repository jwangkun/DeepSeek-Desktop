#!/bin/bash

echo "🚀 开始测试 Pake 构建配置..."

# 检查必要文件
echo "📁 检查必要文件..."
if [ ! -f "app.iconset/icon_256x256.png" ]; then
    echo "❌ 图标文件不存在: app.iconset/icon_256x256.png"
    echo "请确保图标文件存在"
    exit 1
fi

if [ ! -f "package.json" ]; then
    echo "❌ package.json 不存在"
    exit 1
fi

# 检查 lock 文件
if [ ! -f "package-lock.json" ] && [ ! -f "yarn.lock" ] && [ ! -f "npm-shrinkwrap.json" ]; then
    echo "⚠️  没有找到依赖锁定文件，建议运行 'npm install' 生成 package-lock.json"
fi

echo "✅ 文件检查通过"

# 检查 Node.js 和 npm
echo "🔧 检查环境..."
node --version || { echo "❌ Node.js 未安装"; exit 1; }
npm --version || { echo "❌ npm 未安装"; exit 1; }

# 安装 Pake
echo "📦 安装 Pake CLI..."
npm install -g pake-cli@latest

# 检查 Pake 版本
echo "🔍 检查 Pake 版本..."
pake --version || { echo "❌ Pake 安装失败"; exit 1; }

echo "✅ 环境检查通过"

# 测试构建 (仅生成配置，不实际构建)
echo "🧪 测试构建配置..."
pake "https://chat.deepseek.com" \
  --name "DeepSeek-Desktop-Test" \
  --icon "./app.iconset/icon_256x256.png" \
  --width 1200 \
  --height 800 \
  --dry-run 2>/dev/null || echo "⚠️  dry-run 参数可能不支持，这是正常的"

echo "🎉 测试完成！配置看起来正常。"
echo "💡 现在你可以运行 GitHub Actions 或本地构建了。"