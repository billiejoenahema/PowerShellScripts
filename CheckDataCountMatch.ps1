# DBへの登録件数とファイルの行数が一致していること確認するスクリプト

# DBへの登録件数
[int]$dbDataCount = 100
# ファイルの行数
[int]$fileDataCount = 100

Write-Host "DBへの登録件数: ${dbDataCount}"
Write-Host "ファイルの行数: ${fileDataCount}"

# 件数が一致しなければ処理を中止
if ($dbDataCount -ne $fileDataCount) {
    Write-Host "DBへの登録件数とファイルの行数が一致していません。" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: 件数不一致"
    exit
}

Write-Host "DBへの登録件数とファイルの行数は一致しています。" -ForegroundColor Green

# デスクトップ通知
.\DesktopNotification.ps1
