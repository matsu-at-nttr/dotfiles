# 環境設定ファイルのテンプレート

## vimのバージョン

* vim の package管理として利用している`dein.vim`のサポートは、`Vim 8.0 or above or NeoVim.`
* 下記でバージョン確認する。`vim7.*`なら、8系を入れる必要あり
```
$ vim --version
VIM - Vi IMproved 7.4
```
* Ubuntu 16.04でvim8系を入れる(ref: https://tmg0525.hatenadiary.jp/entry/2017/09/03/072201)
```
# uninstall
sudo apt remove vim

# install
udo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

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


- please use vim7.4 or more
