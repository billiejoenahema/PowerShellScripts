# �f�X�N�g�b�v�ʒm���s���X�N���v�g

param (
    [string]$message = "�������������܂���"
)

Add-Type -AssemblyName System.Windows.Forms

# �f�X�N�g�b�v�ʒm���s��
$notification = New-Object System.Windows.Forms.NotifyIcon
$notification.Icon = [System.Drawing.SystemIcons]::Information
$notification.BalloonTipText = $message
$notification.Visible = $true
$notification.ShowBalloonTip(5000) # �V�X�e���̋K��l���D�悳��邽�߁A�����ŕb���w�肵�Ă��\�����Ԃ͕ς��Ȃ�
$notification.Visible = $false
