#!/bin/bash
# 啟動 Ollama 的 Shell 腳本 (安全寫法)

# 自動偵測腳本所在目錄，確保執行時路徑正確
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# 設定環境變數
export OLLAMA_HOST=0.0.0.0:11434
export OLLAMA_FLASH_ATTENTION=1

# 執行 Ollama 服務
exec ollama serve
