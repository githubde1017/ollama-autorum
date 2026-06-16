#!/bin/bash

# 設定路徑 (請確保這些路徑與你的環境一致)
BACKUP_DIR="/mnt/d/01_Workflow/ollama-backups"
OLLAMA_MODELS_DIR="/usr/share/ollama/.ollama"
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/ollama_backup_$DATE.tar.gz"

echo "🚀 開始冷備份 Ollama 模型..."

# 1. 確保備份目錄存在
mkdir -p "$BACKUP_DIR"

# 2. 停止服務 (防止數據寫入中導致損壞)
echo "🛑 暫停 Ollama 服務中..."
sudo systemctl stop ollama.service

# 3. 執行壓縮備份
echo "📦 正在打包資料..."
tar -czf "$BACKUP_FILE" -C "$OLLAMA_MODELS_DIR" .

# 4. 恢復服務
echo "▶️ 恢復 Ollama 服務中..."
sudo systemctl start ollama.service

# 5. 清理舊備份 (只保留最近 7 天)
find "$BACKUP_DIR" -type f -name "ollama_backup_*.tar.gz" -mtime +7 -delete

echo "✅ 備份完成: $BACKUP_FILE"