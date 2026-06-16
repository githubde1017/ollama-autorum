# 更新紀錄 (Changelog)

## v1.0.0 - 2026-06-16
### 新增 (Added)
- 新增 `start-ollama.sh`：安全啟動腳本，自動偵測路徑。
- 新增 `systemd/ollama.service`：模板檔，支援 WSL 開機自動啟動。
- 新增 `install.sh`：一鍵安裝腳本，負責設定權限、複製 service 檔、替換路徑、啟用並啟動服務。
- 新增 `.gitattributes`：統一 LF 換行符號，避免跨平台 CRLF 警告。
- 新增 `.gitignore`：忽略暫存檔案與日誌。
- 新增 `README.md`：專案概述與快速上手指南 (中英雙語)。
- 新增 `docs/usage.md`：詳細操作手冊 (中英雙語)。
- 新增 `.github/ISSUE_TEMPLATE/bug_report.md`：Issue 模板。
- 新增 `.github/PULL_REQUEST_TEMPLATE.md`：PR 模板。
- 新增 `.github/workflows/ci.yml`：GitHub Actions CI/CD 工作流程。
- 新增 `LICENSE`：MIT 授權條款。
- 新增 `CONTRIBUTING.md`：協作指南。
- 新增 `example.env`：範例環境變數檔。

---

# Changelog

## v1.0.0 - 2026-06-16
### Added
- Added `start-ollama.sh`: Safe startup script with auto path detection.
- Added `systemd/ollama.service`: Template file supporting WSL auto-start.
- Added `install.sh`: One-click installer for permissions, service file copy, path replacement, enable and start service.
- Added `.gitattributes`: Enforce LF line endings to avoid CRLF warnings.
- Added `.gitignore`: Ignore temporary files and logs.
- Added `README.md`: Project overview and quick start guide (bilingual).
- Added `docs/usage.md`: Detailed usage guide (bilingual).
- Added `.github/ISSUE_TEMPLATE/bug_report.md`: Issue template.
- Added `.github/PULL_REQUEST_TEMPLATE.md`: Pull request template.
- Added `.github/workflows/ci.yml`: GitHub Actions CI/CD workflow.
- Added `LICENSE`: MIT License.
- Added `CONTRIBUTING.md`: Contributing guide.
- Added `example.env`: Sample environment variables file.
