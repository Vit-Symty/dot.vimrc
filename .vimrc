" File Settings
:set encoding=utf-8
:set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
:set fileformats=unix,dos,mac

" Display Settings
":colorscheme hybrid
:set number
:set title
:set showmatch matchtime=1
:syntax on
:set shellslash
:set showcmd
:set display=lastline
:set list
:set listchars=tab:>\ ,eol:¬

function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

" Edit Settings
:set history=128
:set tabstop=2
:set smartindent
:set expandtab
:set shiftwidth=2

" Search Settings
:set ignorecase
:set smartcase
:set wrapscan
:set incsearch

