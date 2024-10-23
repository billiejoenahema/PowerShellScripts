# 転送先と転送元のファイルサイズが一致していること確認するスクリプト

# 転送元ファイルパス
[string]$sourceFilePath = "C:\Users\Billie\Documents\source_file.txt"
# 転送先ファイルパス
[string]$destFilePath = "C:\Users\Billie\Documents\dest_file.txt"

# 転送元ファイルのサイズを取得
[int]$sourceFileSize = (Get-Item $sourceFilePath).Length

# 転送先ファイルのサイズを取得
# $destFileSize = ssh -i $destServerPem $destServerHost "stat -c%s $destFilePath"
[int]$destFileSize = (Get-Item $destFilePath).Length

Write-Host "転送元: ${sourceFileSize}"
Write-Host "転送先: ${destFileSize}"

# ファイルサイズが一致しなければ処理を中止
if ($sourceFileSize -ne $destFileSize) {
    Write-Host "転送元と転送先のファイルサイズが一致していません。" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: ファイル転送失敗"
    exit
}

Write-Host "転送元と転送先のファイルサイズは一致しています。" -ForegroundColor Green

# デスクトップ通知
.\DesktopNotification.ps1
