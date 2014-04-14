" File Settings
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" Display Settings
set number
set title
set laststatus=2
"set statusline=2
set showmatch matchtime=1
:syntax on
set shellslash
set showcmd
set display=lastline
set list
set listchars=tab:>\ ,eol:¬

function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

" Edit Settings
set history=128
set tabstop=2
set autoindent smartindent
set expandtab
set shiftwidth=2

" Search Settings
set ignorecase
set smartcase
set wrapscan
set incsearch

" NeoBundle Setting
if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
call neobundle#end()
" Required:
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Development Env
NeoBundle 'tpope/vim-rails'
NeoBundle 'alpaca-tc/vim-endwise.git'
NeoBundle 'alpaca-tc/alpaca_tags'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'basyura/unite-rails'
NeoBundle 'itchyny/lightline.vim'

" lightline
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"x":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

" Color Scheme
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'
NeoBundle 'vim-scripts/BusyBee'
NeoBundle '29decibel/codeschool-vim-theme'
colorscheme hybrid
