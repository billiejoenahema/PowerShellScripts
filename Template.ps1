# バッチのテンプレート

# 各バッチのブロック内で複数のバッチにまたがって参照される変数への代入は避ける

# ログファイルのパス
[string]$logfilePath = ".\logs\logfile.txt"

# ログの記録を開始
Start-Transcript -Path $logfilePath | Out-Null

###################### バッチ処理ここから ######################

Write-Host "`n01バッチ実行"

# エラーなら処理を中止
if ($error) {
    Write-Host "エラーが発生しました。" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: 01バッチでエラーが発生しました。"
    exit
}

Write-Host "`n02バッチ実行"

if ($error) {
    Write-Host "エラーが発生しました。" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: 02バッチでエラーが発生しました。"
    exit
}

Write-Host "`n03バッチ実行"

if ($error) {
    Write-Host "エラーが発生しました。" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: 03バッチでエラーが発生しました。"
    exit
}

###################### バッチ処理ここまで ######################

# デスクトップ通知
.\DesktopNotification.ps1

# ログの記録を停止
Stop-Transcript | Out-Null
