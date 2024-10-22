# �t�@�C���̍X�V�������`�F�b�N����X�N���v�g

# �����̓��t��yyyymmdd�`���Ŏ擾
$today = Get-Date -Format "yyyyMMdd"
# ���T���j�̓��t�����擾
$monday = (Get-Date).AddDays(-(Get-Date).DayOfWeek.value__)

# �t�H���_�p�X
$folderPath = "C:\Users\Billie\Documents"

# �t�@�C���p�X
$file1 = "${folderPath}\file1.txt"
$file2 = "${folderPath}\file2.txt"

Write-Host "�t�@�C���̍X�V�������m�F���܂��B" -ForegroundColor Cyan

# �t�H���_���ɂ���t�@�C����\��
Dir $folderPath

# file1�̍X�V�����������̓��t�łȂ���Ώ����𒆎~
# ���t������v���Ă��邩���m�F���邽�߁A������ɕϊ����Ă���
$lastWriteTime = (Get-Item $file1).LastWriteTime.ToString("yyyyMMdd")

if ($lastWriteTime -ne $today) {
    .\ShowErrorMessageAndNotification.ps1 "�X�V�����������̓��t�ł͂���܂���F${file1}"
    exit
}

# file2�̍X�V���������T���j���ȑO�̓��t�Ȃ珈���𒆎~
$lastWriteTime = Get-Date (Get-Item $file2).LastWriteTime

if ($lastWriteTime -lt $monday) {
    .\ShowErrorMessageAndNotification.ps1 "�X�V���������T���j�ȑO�̓��t���ł��F${file2}"
    exit
}

Write-Host "�ŐV�̃t�@�C���ł��B" -ForegroundColor Green

# �f�X�N�g�b�v�ʒm
.\DesktopNotification.ps1
