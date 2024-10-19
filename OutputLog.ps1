# ログファイルのパス
$logfilePath = ".\logs\logfile.txt"

# ログの記録を開始
Start-Transcript -Path $logfilePath | Out-Null

Write-Host "処理を開始します。" -ForegroundColor Cyan

Get-Date

Read-Host "今日の日付を入力してください。"

Write-Host "処理を終了します。" -ForegroundColor Cyan

# ログの記録を停止
Stop-Transcript | Out-Null
