#!/bin/bash

# SSYDW 本地预览脚本
# Local preview script for SSYDW

echo "🌐 启动 SSYDW 本地预览服务器..."
echo "================================"
echo ""

PORT=8000

# Check if port is already in use
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1 ; then
    echo "⚠️  端口 $PORT 已被占用，尝试使用端口 8001..."
    PORT=8001
fi

echo "📂 当前目录: $(pwd)"
echo "🔗 访问地址: http://localhost:$PORT"
echo ""
echo "💡 提示："
echo "   - 按 Ctrl+C 停止服务器"
echo "   - 修改文件后刷新浏览器即可看到更改"
echo ""

# Try to open browser
if command -v open &> /dev/null; then
    echo "🌐 正在打开浏览器..."
    sleep 2 && open "http://localhost:$PORT" &
elif command -v xdg-open &> /dev/null; then
    sleep 2 && xdg-open "http://localhost:$PORT" &
fi

# Start server
if command -v python3 &> /dev/null; then
    echo "🚀 使用 Python 3 启动服务器..."
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    echo "🚀 使用 Python 启动服务器..."
    python -m SimpleHTTPServer $PORT
else
    echo "❌ 错误: 未找到 Python"
    echo "请安装 Python 或使用浏览器直接打开 index.html"
    exit 1
fi

