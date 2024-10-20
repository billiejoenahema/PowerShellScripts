# C:\csvフォルダを[任意のフォルダ]にコピーするスクリプト
# コピーに失敗するときは管理者権限で実行すること

# 本日の日付をyyyymmdd形式で取得
$today = Get-Date -Format "yyyyMMdd"

# コピー元のフォルダ
$sourcePath = "C:\csv"

# コピー先のパス
$destinationPath = "C:\Users\Billie\Documents\csv_${today}"

Write-Host "C:\csvフォルダを[任意のフォルダ]にコピーします。" -ForegroundColor Cyan

# コピー元のフォルダが存在しない場合はメッセージを表示して処理を中止
if (-not (Test-Path $sourcePath)) {
    Write-Host "${sourcePath}フォルダが存在しません。" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: ${sourcePath}フォルダが存在しません。"
    exit
}

# コピー先に同名のフォルダが存在する場合は削除
if (Test-Path $destinationPath) {
    Remove-Item -Path $destinationPath -Recurse -Force
}

# フォルダを再帰的にコピー
Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse -Force

# コピー先フォルダ内のファイルを表示
Dir $destinationPath
