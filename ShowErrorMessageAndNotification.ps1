# エラーメッセージの表示とデスクトップ通知を行うスクリプト
param (
    [string]$message = "エラーが発生しました。"
)

Write-Host $message -ForegroundColor Red
.\DesktopNotification.ps1 -message $message
