# �]����Ɠ]�����̃t�@�C���T�C�Y����v���Ă��邱�Ɗm�F����X�N���v�g

# �]�����t�@�C���p�X
$sourceFilePath = "C:\Users\Billie\Documents\source_file.txt"
# �]����t�@�C���p�X
$destFilePath = "C:\Users\Billie\Documents\dest_file.txt"

# �]�����t�@�C���̃T�C�Y���擾
$sourceFileSize = (Get-Item $sourceFilePath).Length

# �]����t�@�C���̃T�C�Y���擾
# $destFileSize = ssh -i $destServerPem $destServerHost "stat -c%s $destFilePath"
$destFileSize = (Get-Item $destFilePath).Length

Write-Host "�]����: ${sourceFileSize}"
Write-Host "�]����: ${destFileSize}"

# �t�@�C���T�C�Y����v���Ȃ���Ώ����𒆎~
if ($sourceFileSize -ne $destFileSize) {
    Write-Host "�]�����Ɠ]����̃t�@�C���T�C�Y����v���Ă��܂���B" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: �t�@�C���]�����s"
    exit
}

Write-Host "�]�����Ɠ]����̃t�@�C���T�C�Y�͈�v���Ă��܂��B" -ForegroundColor Green

# �f�X�N�g�b�v�ʒm
.\DesktopNotification.ps1
