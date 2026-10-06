# Copies the latest Newspaper_Board.xlsx built by GitHub Actions into OneDrive.
$ErrorActionPreference = "Stop"
$url = "https://raw.githubusercontent.com/movlan-aliyev/history-echo-news/main/data/Newspaper_Board.xlsx"
$dest = Join-Path (Split-Path $PSScriptRoot -Parent) "Newspaper_Board.xlsx"
$tmp = Join-Path $env:TEMP "Newspaper_Board.download.xlsx"
$log = Join-Path $PSScriptRoot "sync_board.log"

try {
    Invoke-WebRequest -Uri $url -OutFile $tmp -UseBasicParsing -Headers @{ "Cache-Control" = "no-cache" }
    Copy-Item $tmp $dest -Force
    "$(Get-Date -Format s) synced -> $dest" | Add-Content $log
} catch {
    "$(Get-Date -Format s) FAILED: $($_.Exception.Message) (close the file in Excel if it is open)" | Add-Content $log
    exit 1
}
