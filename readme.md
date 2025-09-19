1. `Set-ExecutionPolicy Bypass`に設定

2. chocolateyをインストール

3. gitインストールし、このリポジトリをクローン

4. deploy-dotfiles.ps1を実行

5. chocolateyで以下を入れる
```
powershell-core
neovim
fzf
fd
ripgrep
keypirinha
oh-my-posh
bat
python
nodejs
delta
```

6. Delugia Bookフォントをインストール
※いつからかBookが付くようになっている？
フォントが正しく読み込まれない場合は、settings.jsonのfont名をチェック
https://github.com/adam7/delugia-code/releases/download/v2111.01.2/delugia-book.zip

7. wt-admin.lnk作成
C:\Users\USER_NAME\AppData\Local\Microsoft\WindowsApps\wt.exe
のショートカットを作成してプロパティから管理者権限実行にチェックを入れる
