# 2�̃t�@�C���̃T�C�Y����v���Ă��邱�Ɗm�F����X�N���v�g

# �ϐ��ݒ�
$localFilePath = "C:\Users\Billie\Documents\recovery_code.txt"
$remoteServer = "user@remote-server.com"
$remoteFilePath = "C:\Users\Billie\Documents\recovery_code_copy.txt"

# ���[�J���t�@�C���̃T�C�Y���擾
$localFileSize = (Get-Item $localFilePath).Length

# �����[�g�t�@�C���̃T�C�Y���擾 (SSH�ڑ����g�p)
# $remoteFileSize = ssh $remoteServer "stat -c%s $remoteFilePath"
$remoteFileSize = (Get-Item $remoteFilePath).Length

Write-Host "�]����: ${localFileSize}"
Write-Host "�]����: ${remoteFileSize}"

# �t�@�C���T�C�Y���r
if ($localFileSize -ne $remoteFileSize) {
    Write-Host "�]�����Ɠ]����̃t�@�C���T�C�Y����v���Ă��܂���B" -ForegroundColor Red
    .\DesktopNotification.ps1 -message "Error: �t�@�C���]�����s"
    exit
}

Write-Host "�]�����Ɠ]����̃t�@�C���T�C�Y�͈�v���Ă��܂��B" -ForegroundColor Green
.\DesktopNotification.ps1
