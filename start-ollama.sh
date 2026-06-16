#!/bin/bash
# 清空所有可能衝突的變數
unset OLLAMA_HOST
unset OLLAMA_FLASH_ATTENTION
unset OLLAMA_MODELS

# 僅匯出必要的變數，並使用絕對路徑
export HOME=/home/docker17de
export OLLAMA_HOST=0.0.0.0:11434
export OLLAMA_FLASH_ATTENTION=1
export OLLAMA_MODELS=/var/lib/ollama/models

# 執行
exec /usr/local/bin/ollama serve