# ���݂̃G���R�[�h��ۑ�
$originalEncoding = [Console]::OutputEncoding

# UTF-8�ɕύX
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# �����[�g�T�[�o�[��SSH�Őڑ�����cat�R�}���h�����s���A���ʂ�\��
ssh user@remote-server 'cat /path/to/your/file.txt'

# �G���R�[�h�����ɖ߂�
[Console]::OutputEncoding = $originalEncoding
