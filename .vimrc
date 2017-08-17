filetype plugin indent off

if has('vim_starting')
    set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
    call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    call neobundle#end()
endif

call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

    " Let NeoBundle manage NeoBundle
    NeoBundleFetch 'Shougo/neobundle.vim'
    
    " My Bundles here:
    NeoBundle 'Shougo/neocomplete.vim'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'ervandew/supertab'
    NeoBundle 'vimproc' 
    NeoBundle 'Gist.vim' 
    NeoBundle 'altercation/vim-colors-solarized'
    NeoBundle 'davidhalter/jedi-vim'
    NeBundle  'Lokaltog/vim-powerline'
    NeoBundle 'Yggdroot/indentLine'
    call neobundle#end()

filetype plugin indent on



"jedivim" 
autocmd FileType python setlocal completeopt-=preview


"python"
 augroup SetShebang
     autocmd! SetShebang
         autocmd BufNewFile *.py 0put =\"# -*- encoding: UTF-8 -*-\"|$
 augroup END

 
"カラースキーマ設定"
colorscheme solarized
set background=dark
syntax enable

"検索関係"
set ignorecase      "大文字小文字の区別を無くす"
set smartcase       "大文字で検索した場合は大文字と小文字を区別する"
set hlsearch        "マッチ部分をハイライト表示"

"編集関係"
set autoindent      "自動改行"
set virtualedit=all "文字がない部分でもカーソル操作を可能にする"
set backspace=2     "winと同じbackspace"
set showmatch       "対応するカッコをハイライト表示
set matchtime=2     "showmatchのハイライト表示の時間"

"表示関係"
set number          "行番号"
set wrap            "長い文の折り返し"   
set cursorline      "カーソルラインのハイライト"
set wildmenu        "コマンドモードの保管"

"ステータスライン"
set laststatus=2    "ステータスラインを常に表示"
set showmode        "現在のモードを表示"
set showcmd         "入力コマンドをステータスラインの下に表示"
set ruler           "カーソルの現在位置の表示"

"swpファイルを作成しない"
set noswapfile
