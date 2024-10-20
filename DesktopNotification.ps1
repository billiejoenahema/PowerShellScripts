# デスクトップ通知を行うスクリプト

# usage: .\DesktopNotification.ps1 -message "デスクトップ通知のメッセージを指定できます。"

param (
    [string]$message = "処理が終了しました。"
)

Add-Type -AssemblyName System.Windows.Forms

# デスクトップ通知を行う
$notification = New-Object System.Windows.Forms.NotifyIcon
$notification.Icon = [System.Drawing.SystemIcons]::Information
$notification.BalloonTipText = $message
$notification.Visible = $true
$notification.ShowBalloonTip(5000) # システムの規定値が優先されるため、ここで秒数指定しても表示時間は変わらない
$notification.Visible = $false
