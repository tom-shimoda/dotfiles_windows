1. `Set-ExecutionPolicy Bypass`に設定

2. chocolateyをインストール

3. gitインストールし、このリポジトリをクローン

4. deploy-dotfiles.ps1を実行

5. chocolateyで以下を入れる
```
powershell-core
neovim
fzf
ripgrep
keypirinha
oh-my-posh
bat
```

6. Delugia Bookフォントをインストール
※いつからかBookが付くようになっている？
フォントが正しく読み込まれない場合は、settings.jsonのfont名をチェック
https://github.com/adam7/delugia-code/releases/download/v2111.01.2/delugia-book.zip
