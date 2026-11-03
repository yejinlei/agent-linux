#!/bin/bash
set -e

echo "🐧 Linux 内核本体论 · agent-linux 一键部署脚本"
echo "=============================================="
echo ""

# 配置
REPO_NAME="agent-linux"
GITHUB_USER=${1:-"yejinlei"}
REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"
PAGES_URL="https://${GITHUB_USER}.github.io/${REPO_NAME}/"

echo "📋 部署信息："
echo "   仓库: ${REPO_URL}"
echo "   访问地址: ${PAGES_URL}"
echo ""

# 检查 git
if ! command -v git &> /dev/null; then
    echo "❌ 未检测到 git，请先安装 git"
    exit 1
fi

# 初始化 git 仓库
if [ ! -d ".git" ]; then
    echo "🔧 初始化 git 仓库..."
    git init -b main
fi

# 配置远程
if git remote get-url origin &> /dev/null; then
    echo "🔄 更新远程仓库地址..."
    git remote set-url origin "${REPO_URL}"
else
    echo "🔗 添加远程仓库..."
    git remote add origin "${REPO_URL}"
fi

# 添加文件
echo "📦 添加文件..."
git add index.html README.md deploy.sh

# 提交
echo "💾 提交..."
git commit -m "feat: Linux 内核本体论 v1.0 - 内核架构/TCP-IP/文件系统/驱动/虚拟化" 2>/dev/null || echo "   (无新内容需要提交)"

# 推送
echo "🚀 推送到 GitHub..."
echo ""
echo "⚠️  接下来需要你完成："
echo ""
echo "   1. 如果仓库还没创建，请先访问："
echo "      https://github.com/new"
echo "      仓库名填写: ${REPO_NAME}"
echo "      选择 Public，不要勾选初始化选项"
echo ""
echo "   2. 然后执行以下命令完成推送："
echo "      git push -u origin main"
echo ""
echo "   3. 推送成功后，进入仓库 Settings → Pages："
echo "      Source 选 main 分支，目录选 / (root)，点击 Save"
echo ""
echo "   4. 等待 1-2 分钟后访问："
echo "      ${PAGES_URL}"
echo ""
echo "✅ 文件已准备好！"
