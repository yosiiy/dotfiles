
"行番号を表示(切り替え)
set number
"プログラミング言語に合わせて適切にインデントを自動挿入(切り替え)
set smartindent
"各コマンドやsmartindentで挿入する空白の量(数値)
set shiftwidth=4
"Tabキーで挿入するスペースの数(数値)
set softtabstop=4
"カレントディレクトリを自動で移動
set autochdir
"バッファ内で扱う文字コード(文字列)
set encoding=utf-8
"書き込む文字コード(文字列) : この場合encodingと同じなので省略可
set fileencoding=utf-8
"読み込む文字コード(文字列のリスト) : この場合UTF-8を試し、だめならShift_JIS
set fileencodings=utf-8,cp932
"Vimの無名レジスタとシステムのクリップボードを連携(文字列のリスト) : ダメならxclipをインストールで使えるかも
set clipboard+=unnamed,unnamedplus
"eコマンド等でTabキーを押すとパスを保管する(文字列のリスト) : この場合まず最長一致文字列まで補完し、2回目以降は一つづつ試す
set wildmode=longest,full

"
" 検索と置換
"
set ignorecase
set smartcase
set wrapscan
set incsearch
"インタラクティブに置換
set inccommand=split

"
" タブ設定
"
"タブ文字の代わりにスペースを使う(切り替え)
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set shiftround

" leader
let mapleader = "\<Space>"

"挿入モード終了時にIMEをオフ
"inoremap <silent> <Esc> <Esc>:call system('fcitx-remote -c')<CR>

"貼り付けたテキストを素早く選択する
noremap gV `[v`]


"
"dein Scripts-----------------------------
"
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yoshida/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/yoshida/.cache/dein')
  call dein#begin('/Users/yoshida/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/yoshida/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"
"End dein Scripts-------------------------
"
"
"ノーマルモードで スペース2回でCocList
nmap <silent> <space><space> :<C-u>CocList<cr>
"スペースhでHover
nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
"スペースdfでDefinition
nmap <silent> <space>df <Plug>(coc-definition)
"スペースrfでReferences
nmap <silent> <space>rf <Plug>(coc-references)
"スペースrnでRename
nmap <silent> <space>rn <Plug>(coc-rename)
"スペースfmtでFormat
nmap <silent> <space>fmt <Plug>(coc-format)
