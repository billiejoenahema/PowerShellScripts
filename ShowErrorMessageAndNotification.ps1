# �G���[���b�Z�[�W�̕\���ƃf�X�N�g�b�v�ʒm���s���X�N���v�g
param (
    [string]$message = "�G���[���������܂����B"
)

Write-Host $message -ForegroundColor Red
.\DesktopNotification.ps1 -message $message
