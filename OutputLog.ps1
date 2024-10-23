# ログの記録が停止されていなければ停止
try{Stop-Transcript | Out-Null}catch{}

# ログファイルのパス
[string]$logfilePath = ".\logs\logfile.txt"

# ログの記録を開始
Start-Transcript -Path $logfilePath | Out-Null

# なんらかの処理

# ログの記録を停止
Stop-Transcript | Out-Null
