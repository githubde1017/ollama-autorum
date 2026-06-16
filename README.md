# WSL 自動化 Ollama 啟動流程  
## ✨ 三句亮點摘要
1. 一鍵啟動腳本，環境變數自動套用。  
2. 提供 systemd 服務檔，支援 WSL 開機自動啟動。  
3. 清楚的專案結構，方便團隊快速複製與維護。  

---

# WSL Automation for Ollama  
## ✨ Highlights
1. One‑click startup script with environment variables pre‑configured.  
2. Systemd service file for auto‑start on WSL boot.  
3. Clear project structure for easy replication and maintenance.  

---

## 📂 專案結構 (Project Structure)
```
wsl-automation/
 ├── README.md                        # 專案概述與快速上手指南 (Project overview and quick start guide)
 ├── start-ollama.sh                  # 啟動 Ollama 的 Shell 腳本 (Shell script to start Ollama)
 ├── systemd/
 │    └── ollama.service              # systemd 服務檔，支援自動啟動 (Systemd service file for auto-start)
 ├── docs/
 │    └── usage.md                    # 詳細操作手冊 (Detailed usage guide)
 ├── .github/
 │    ├── ISSUE_TEMPLATE/
 │    │    └── bug_report.md          # Issue 模板 (Issue template)
 │    ├── PULL_REQUEST_TEMPLATE.md    # PR 模板 (Pull Request template)
 │    └── workflows/
 │         └── ci.yml                 # GitHub Actions CI/CD 工作流程 (GitHub Actions CI/CD workflow)
 ├── .gitignore                       # 忽略暫存檔案與日誌 (Ignore temporary files and logs)
 ├── LICENSE                          # 授權條款 (MIT License)
 ├── CONTRIBUTING.md                  # 協作指南 (Contributing guide)
 ├── CHANGELOG.md                     # 版本更新紀錄 (Changelog)
 └── example.env                      # 範例環境變數檔 (Sample environment variables file)
```

---

## 🚀 快速開始 (Quick Start)

### 1. 複製專案 (Clone the repository)
```bash
git clone https://github.com/your-username/wsl-automation.git
cd wsl-automation
```

### 2. 設定腳本 (Setup script)
```bash
chmod +x start-ollama.sh
```

### 3. 安裝 systemd 服務 (Install systemd service)
```bash
sudo cp systemd/ollama.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ollama.service
sudo systemctl start ollama.service
```

### 4. 驗證狀態 (Verify status)
```bash
systemctl status ollama.service
```

---

## 📖 文件 (Documentation) 
  - 狀態檢查 / Check status  
  - 停止服務 / Stop service  
  - 重啟服務 / Restart service  
  - 開機自動啟動 / Enable auto-start  

---

## 📌 協作 (Contributing)  
- 使用 Issue 與 PR 模板，保持專案流程一致  

---

