# 2つのファイルのサイズが一致していること確認するスクリプト

# 変数設定
$localFilePath = "C:\path\to\local\file.txt"
$remoteServer = "user@remote-server.com"
$remoteFilePath = "/path/to/remote/file.txt"

# ローカルファイルのサイズを取得
$localFileSize = (Get-Item $localFilePath).Length

# リモートファイルのサイズを取得 (SSH接続を使用)
$remoteFileSize = ssh $remoteServer "stat -c%s $remoteFilePath"

# ファイルサイズを比較
if ($localFileSize -eq $remoteFileSize) {
    Write-Host "ファイルサイズは一致しています。"
} else {
    Write-Host "ファイルサイズが一致していません。ファイルの転送に失敗しています。"
}
