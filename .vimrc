filetype plugin indent off

"""""""""""""""""""""
"NeoBundleのpath設定
"""""""""""""""""""""
if has('vim_starting')
    set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
    call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    call neobundle#end()
endif


"""""""""""""""""""""
"NeoBundle
""""""""""""""""""""" 
call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

    " Let NeoBundle manage NeoBundle
    NeoBundleFetch 'Shougo/neobundle.vim'
    
    " My Bundles here:
    NeoBundle 'Shougo/neocomplete.vim'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'vimproc' 
    NeoBundle 'Gist.vim' 
    NeoBundle 'altercation/vim-colors-solarized'
    NeoBundle 'davidhalter/jedi-vim'
    NeoBundle 'itchyny/lightline.vim'
    NeoBundle 'Yggdroot/indentLine'
call neobundle#end()



filetype plugin indent on


"""""""""""""""""""""
"plugin
""""""""""""""""""""" 
"jedivim"
augroup jediOpt
	autocmd!
	autocmd FileType python setlocal completeopt-=preview
augroup end

"indentLine"
let g:iendentLine_enabled = 1

"python"
 augroup SetShebang
     autocmd! SetShebang
         autocmd BufNewFile *.py 0put =\"# -*- encoding: UTF-8 -*-\"|$
 augroup END


"""""""""""""""""""""
"visual settings
""""""""""""""""""""" 
colorscheme solarized
set background=dark
syntax enable
set number          "行番号"
set wrap            "長い文の折り返し"   
set cursorline      "カーソルラインのハイライト"
set wildmenu        "コマンドモードの保管"
set showmatch       "対応するカッコをハイライト表示
set matchtime=2     "showmatchのハイライト表示の時間"

"ステータスライン"
set laststatus=2    "ステータスラインを常に表示"
set showmode        "現在のモードを表示"
set showcmd         "入力コマンドをステータスラインの下に表示"
set ruler           "カーソルの現在位置の表示"
 

"""""""""""""""""""""
"検索オプション
""""""""""""""""""""" 
set ignorecase      "大文字小文字の区別を無くす"
set smartcase       "大文字で検索した場合は大文字と小文字を区別する"
set hlsearch        "マッチ部分をハイライト表示"


"""""""""""""""""""""
"indent
""""""""""""""""""""" 
set autoindent      "自動改行"
set virtualedit=all "文字がない部分でもカーソル操作を可能にする"
set backspace=2     "winと同じbackspace"
set expandtab

set shiftwidth=2    "autoindentで挿入される空白数"
set tabstop=2       "tab-spaceの変換を何文字とするか"
set softtabstop=0   "標準Inputから入るtabの数"

augroup fileTypeindent
	autocmd!
	autocmd FileType ruby    setlocal sw=2 sts=2 ts=2 et
	autocmd FileType python  setlocal sw=4 sts=4 ts=4 et
	autocmd FileType zsh     setlocal sw=4 sts=4 ts=4 et
augroup end



"swpファイルを作成しない"
set noswapfile
