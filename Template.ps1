# �o�b�`�̃e���v���[�g

# �e�o�b�`�̃u���b�N���ŕ����̃o�b�`�ɂ܂������ĎQ�Ƃ����ϐ��ւ̑���͔�����

# ���O�t�@�C���̃p�X
[string]$logfilePath = ".\logs\logfile.txt"

# ���O�̋L�^���J�n
Start-Transcript -Path $logfilePath | Out-Null

###################### �o�b�`������������ ######################

Write-Host "`n01�o�b�`���s"

# �G���[�Ȃ珈���𒆎~
if ($error) {
    Write-Host "�G���[���������܂����B" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: 01�o�b�`�ŃG���[���������܂����B"
    exit
}

Write-Host "`n02�o�b�`���s"

if ($error) {
    Write-Host "�G���[���������܂����B" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: 02�o�b�`�ŃG���[���������܂����B"
    exit
}

Write-Host "`n03�o�b�`���s"

if ($error) {
    Write-Host "�G���[���������܂����B" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: 03�o�b�`�ŃG���[���������܂����B"
    exit
}

###################### �o�b�`���������܂� ######################

# �f�X�N�g�b�v�ʒm
.\DesktopNotification.ps1

# ���O�̋L�^���~
Stop-Transcript | Out-Null
