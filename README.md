# 環境設定ファイルのテンプレート

## install

- shellで下記のとおり実行する
- git clone(`~/.dotfiles`に落としてくる)
```
git clone ***/dotfiles.git  ~/.dotfiles
```

- 下記を実行してシンボリックリンクを作成
```
chmod 755 ~/.dotfiles/dotfilesLink.sh
~/.dotfiles/dotfilesLink.sh
```
- vimを初回に開いたときに、必要なライブラリがダウンロードされる
- bashrcに自分のbash設定をincludeする記述を追加する. 詳細は、 `dotfilesLink.sh `のecho内容のとおり

## attention

- please use vim7.4 or more
