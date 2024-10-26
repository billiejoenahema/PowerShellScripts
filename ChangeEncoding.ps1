# 現在のエンコードを保存
$originalEncoding = [Console]::OutputEncoding

# UTF-8に変更
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# リモートサーバーにSSHで接続してcatコマンドを実行し、結果を表示
ssh user@remote-server 'cat /path/to/your/file.txt'

# エンコードを元に戻す
[Console]::OutputEncoding = $originalEncoding
