#!/bin/bash
# 一鍵安裝與啟動 Ollama 服務 (安全寫法)

set -e

# 自動偵測專案根目錄
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🚀 開始安裝 Ollama 自動啟動服務..."

# 設定腳本權限
chmod +x "$PROJECT_DIR/start-ollama.sh"

# 複製 systemd 服務檔到系統目錄
sudo cp "$PROJECT_DIR/systemd/ollama.service" /etc/systemd/system/ollama.service

# 自動替換 WorkingDirectory 為專案路徑
sudo sed -i "s|WorkingDirectory=.*|WorkingDirectory=$PROJECT_DIR|" /etc/systemd/system/ollama.service

# 重新載入 systemd
sudo systemctl daemon-reload

# 啟用並啟動服務
sudo systemctl enable ollama.service
sudo systemctl restart ollama.service

echo "✅ 安裝完成！請使用以下指令檢查狀態："
echo "   systemctl status ollama.service"
