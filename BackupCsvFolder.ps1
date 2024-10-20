# C:\csv�t�H���_��[�C�ӂ̃t�H���_]�ɃR�s�[����X�N���v�g
# �R�s�[�Ɏ��s����Ƃ��͊Ǘ��Ҍ����Ŏ��s���邱��

# �{���̓��t��yyyymmdd�`���Ŏ擾
$today = Get-Date -Format "yyyyMMdd"

# �R�s�[���̃t�H���_
$sourcePath = "C:\csv"

# �R�s�[��̃p�X
$destinationPath = "C:\Users\Billie\Documents\csv_${today}"

Write-Host "C:\csv�t�H���_��[�C�ӂ̃t�H���_]�ɃR�s�[���܂��B" -ForegroundColor Cyan

# �R�s�[���̃t�H���_�����݂��Ȃ��ꍇ�̓��b�Z�[�W��\�����ď����𒆎~
if (-not (Test-Path $sourcePath)) {
    Write-Host "${sourcePath}�t�H���_�����݂��܂���B" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: ${sourcePath}�t�H���_�����݂��܂���B"
    exit
}

# �R�s�[��ɓ����̃t�H���_�����݂���ꍇ�͍폜
if (Test-Path $destinationPath) {
    Remove-Item -Path $destinationPath -Recurse -Force
}

# �t�H���_���ċA�I�ɃR�s�[
Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse -Force

# �R�s�[��t�H���_���̃t�@�C����\��
Dir $destinationPath
