# �t�@�C�������݂��Ȃ���΃G���[�\���ƃf�X�N�g�b�v�ʒm���s���X�N���v�g

# �t�H���_�p�X
$folderPath = "C:\Users\Billie\Documents"

# �t�@�C���p�X
$file1 = "${folderPath}\file1.txt"
$file2 = "${folderPath}\file2.txt"

Write-Host "�t�@�C���̑��݂��m�F���܂��B" -ForegroundColor Cyan


# �t�H���_���ɂ���t�@�C����\��
Dir $folderPath

# file1�����݂��Ȃ���Ώ����𒆎~
if (-not (Test-Path $file1)) {
    .\ShowErrorMessageAndNotification.ps1 "�t�@�C�������݂��܂���F${file1}"
    exit
}
# file2�����݂��Ȃ���Ώ����𒆎~
if (-not (Test-Path $file2)) {
    .\ShowErrorMessageAndNotification.ps1 "�t�@�C�������݂��܂���F${file1}"
    exit
}

Write-Host "�t�@�C���͑��݂��܂��B" -ForegroundColor Green

# �f�X�N�g�b�v�ʒm
.\DesktopNotification.ps1
