# DB�ւ̓o�^�����ƃt�@�C���̍s������v���Ă��邱�Ɗm�F����X�N���v�g

# DB�ւ̓o�^����
[int]$dbDataCount = 100
# �t�@�C���̍s��
[int]$fileDataCount = 100

Write-Host "DB�ւ̓o�^����: ${dbDataCount}"
Write-Host "�t�@�C���̍s��: ${fileDataCount}"

# ��������v���Ȃ���Ώ����𒆎~
if ($dbDataCount -ne $fileDataCount) {
    Write-Host "DB�ւ̓o�^�����ƃt�@�C���̍s������v���Ă��܂���B" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: �����s��v"
    exit
}

Write-Host "DB�ւ̓o�^�����ƃt�@�C���̍s���͈�v���Ă��܂��B" -ForegroundColor Green

# �f�X�N�g�b�v�ʒm
.\DesktopNotification.ps1
