call plug#begin('~/.config/nvim/plugged')

"全角スペースなどを可視化
Plug 'bronson/vim-trailing-whitespace'

"LSP
Plug 'prabirshrestha/asyncomplete.vim'

"LSPのNIMプラグイン
"https://github.com/alaviss/nim.nvim
Plug 'alaviss/nim.nvim'

"りんたー
"https://medium.com/@moinmoti/nim-on-neovim-ec3cf44dd82c
Plug 'dense-analysis/ale'

"ステータスラインバーをリッチに
Plug 'tpope/vim-fugitive'

"ヘルプを日本語化するためにいんすこ
Plug 'vim-jp/vimdoc-ja'

"色をモロカイにする
Plug 'tomasr/molokai'

" Initialize plugin system
call plug#end()

"nimのLSPコード補完設定
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'nim',
    \ 'whitelist': ['nim'],
    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
    \ })


"https://mryyomutga.hatenablog.com/entry/2018/11/11/021243
let s:base_dir = expand('~/.config/nvim')
" runtimepathに追加
execute 'set runtimepath+=' . fnamemodify(s:base_dir, ':p')

colorscheme molokai
set t_Co=256

runtime! util/*vim
