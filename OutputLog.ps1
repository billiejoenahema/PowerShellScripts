# ���O�̋L�^����~����Ă��Ȃ���Β�~
try{Stop-Transcript | Out-Null}catch{}

# ���O�t�@�C���̃p�X
[string]$logfilePath = ".\logs\logfile.txt"

# ���O�̋L�^���J�n
Start-Transcript -Path $logfilePath | Out-Null

# �Ȃ�炩�̏���

# ���O�̋L�^���~
Stop-Transcript | Out-Null
