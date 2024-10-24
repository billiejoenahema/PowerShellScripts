# ファイルの更新日時をチェックするスクリプト

# 今日の日付をyyyymmdd形式で取得
[string]$today = Get-Date -Format "yyyyMMdd"
# 今週月曜の日付けを取得
[datetime]$monday = (Get-Date).AddDays(-(Get-Date).DayOfWeek.value__)

# フォルダパス
[string]$folderPath = "C:\Users\Billie\Documents"

# ファイルパス
[string]$file1 = "${folderPath}\file1.txt"
[string]$file2 = "${folderPath}\file2.txt"

Write-Host "ファイルの更新日時を確認します。" -ForegroundColor Cyan

# フォルダ内にあるファイルを表示
Dir $folderPath

# file1の更新日時が今日の日付でなければ処理を中止
# 日付けが一致しているかを確認するため、文字列に変換している
[string]$file1LastWriteTime = (Get-Item $file1).LastWriteTime.ToString("yyyyMMdd")

if ($file1LastWriteTime -ne $today) {
    .\ShowErrorMessageAndNotification.ps1 "更新日時が今日の日付ではありません：${file1}"
    exit
}

# file2の更新日時が今週月曜日以前の日付なら処理を中止
[datetime]$file2LastWriteTime = Get-Date (Get-Item $file2).LastWriteTime

if ($file2LastWriteTime -lt $monday) {
    .\ShowErrorMessageAndNotification.ps1 "更新日時が今週月曜以前の日付けです：${file2}"
    exit
}

Write-Host "最新のファイルです。" -ForegroundColor Green

# デスクトップ通知
.\DesktopNotification.ps1
