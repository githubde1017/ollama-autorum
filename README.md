CICICICI
這是一份為你的專案量身打造的 `README.md` 內容。這份文件遵循 DevOps 標準，幫助其他人快速理解專案目的，同時確保資安規範（環境與路徑分離）。

你可以直接將以下內容複製到 `README.md` 檔案中：

---

# Ollama Auto-Run (Linux/WSL2)

這是一個為 Linux (及 WSL2) 環境設計的自動化部署專案，用於將 **Ollama** 服務設定為系統常駐程式，並確保其開機自動執行且穩定運行。

## 專案特性

* **資安導向**：採用配置與執行邏輯分離的設計，不會在程式碼中硬寫任何路徑。
* **部署簡單**：標準化的自動化安裝腳本。
* **高可維護性**：所有的環境參數均集中在 `/etc/ollama.env` 中，易於管理。

## 安裝步驟

### 1. 準備環境檔案

請從範本建立系統級環境設定檔：

```bash
sudo cp ollama.env.example /etc/ollama.env

```

### 2. 設定環境參數

使用編輯器修改 `/etc/ollama.env`，填入你的實際環境資訊：

```bash
sudo nano /etc/ollama.env

```

請確認檔案中包含以下變數（範例）：

```text
OLLAMA_USER=你的使用者名稱
OLLAMA_WORK_DIR=/絕對路徑/到/你的專案目錄
OLLAMA_HOST=0.0.0.0:11434
OLLAMA_FLASH_ATTENTION=1

```

### 3. 執行安裝

執行專案內的安裝腳本，系統會自動配置 Systemd 服務：

```bash
sudo chmod +x install.sh
sudo ./install.sh

```

### 4. 服務管理

安裝完成後，Ollama 服務將會隨開機自動啟動。你可以使用以下標準指令管理服務：

* **檢查狀態**: `systemctl status ollama`
* **查看日誌**: `journalctl -u ollama -f`
* **重啟服務**: `sudo systemctl restart ollama`

---

## 資安聲明

本專案嚴格遵守「配置與程式碼分離」原則。請確保 `/etc/ollama.env` 檔案權限已設定為適當的限制（建議 `sudo chmod 644 /etc/ollama.env`），以防止敏感路徑資訊外洩。

## 開發者建議

* 若要進行專案備份或上傳至 GitHub，請確認已在 `.gitignore` 中加入 `ollama.env`，以防止個人環境資訊外洩。

