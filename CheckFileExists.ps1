# ファイルの存在をチェックするスクリプト

# フォルダパス
[string]$folderPath = "C:\Users\Billie\Documents"

# ファイルパス
[string]$file1 = "${folderPath}\file1.txt"
[string]$file2 = "${folderPath}\file2.txt"

Write-Host "ファイルの存在を確認します。" -ForegroundColor Cyan


# フォルダ内にあるファイルを表示
Dir $folderPath

# file1が存在しなければ処理を中止
if (-not (Test-Path $file1)) {
    .\ShowErrorMessageAndNotification.ps1 "ファイルが存在しません：${file1}"
    exit
}
# file2が存在しなければ処理を中止
if (-not (Test-Path $file2)) {
    .\ShowErrorMessageAndNotification.ps1 "ファイルが存在しません：${file1}"
    exit
}

Write-Host "ファイルは存在します。" -ForegroundColor Green

# デスクトップ通知
.\DesktopNotification.ps1
