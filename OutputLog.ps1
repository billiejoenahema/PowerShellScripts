# ���O�t�@�C���̃p�X
$logfilePath = ".\logs\logfile.txt"

# ���O�̋L�^���J�n
Start-Transcript -Path $logfilePath | Out-Null

Write-Host "�������J�n���܂��B" -ForegroundColor Cyan

Get-Date

Read-Host "�����̓��t����͂��Ă��������B"

Write-Host "�������I�����܂��B" -ForegroundColor Cyan

# ���O�̋L�^���~
Stop-Transcript | Out-Null
