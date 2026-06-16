#!/bin/bash
set -e
# 取得專案所在目錄
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🚀 開始安裝 Ollama 服務..."

# 1. 確保 /etc/ollama.env 存在 (確保資安與配置分離)
if [ ! -f "/etc/ollama.env" ]; then
    echo "⚠️ 警告: /etc/ollama.env 不存在，請先建立並設定該檔案。"
    exit 1
fi

# 2. 安裝 systemd 服務檔案
# 直接複製，不再使用 sed 替換 (因為我們已透過環境變數解耦)
SERVICE_PATH="/etc/systemd/system/ollama.service"
sudo cp "$PROJECT_DIR/systemd/ollama.service" "$SERVICE_PATH"

# 3. 設定正確權限
sudo chmod 644 "$SERVICE_PATH"

# 4. 重新載入並啟動
sudo systemctl daemon-reload
sudo systemctl enable ollama.service
sudo systemctl restart ollama.service

echo "✅ 安裝成功！"