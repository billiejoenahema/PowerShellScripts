# 2つのファイルのサイズが一致していること確認するスクリプト

# 変数設定
$localFilePath = "C:\Users\Billie\Documents\recovery_code.txt"
$remoteServer = "user@remote-server.com"
$remoteFilePath = "C:\Users\Billie\Documents\recovery_code_copy.txt"

# ローカルファイルのサイズを取得
$localFileSize = (Get-Item $localFilePath).Length

# リモートファイルのサイズを取得 (SSH接続を使用)
# $remoteFileSize = ssh $remoteServer "stat -c%s $remoteFilePath"
$remoteFileSize = (Get-Item $remoteFilePath).Length

Write-Host "転送元: ${localFileSize}"
Write-Host "転送先: ${remoteFileSize}"

# ファイルサイズを比較
if ($localFileSize -ne $remoteFileSize) {
    Write-Host "転送元と転送先のファイルサイズが一致していません。" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: ファイル転送失敗"
    exit
}

Write-Host "転送元と転送先のファイルサイズは一致しています。" -ForegroundColor Green
.\DesktopNotification.ps1
