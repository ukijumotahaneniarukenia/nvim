# nvim

ベンダー用ディレクトリの作成

ベンダー依存の設定値はこのディレクトリ配下にファイル拡張子vimとして配備するなど

デフォはベンダに切り出したいが、どうしても効かない場合は以下のinit.vimファイルに追記するなど

```
$HOME/.config/nvim/init.vim
```

CMD
```
$ INSTALL_DIR_NAME=$HOME/.config/nvim/util;find ~/.config/nvim/plugged -maxdepth 1 | ruby -F'(?<=/)' -anle 'puts case when $F.size==7;$F[$F.size-1];else nil;end'|sed '/^$/d' | xargs -I@ echo mkdir -p $INSTALL_DIR_NAME/@
```
OUT

```
mkdir -p /home/aine/.config/nvim/util/asyncomplete.vim
mkdir -p /home/aine/.config/nvim/util/vim-fugitive
mkdir -p /home/aine/.config/nvim/util/nim.nvim
mkdir -p /home/aine/.config/nvim/util/ale
```
