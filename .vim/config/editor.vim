" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
" Fix backspace indent
set backspace=indent,eol,start
" Tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
" hidden buffers
set hidden
" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
" Encoding
set bomb
set binary
set ttyfast
" swp files
set nobackup noswapfile
" shell
set fileformats=unix showcmd shell=/bin/sh
"" Color
" common
syntax on
set ruler
set cursorline
set number
" Status bar
set laststatus=2
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F
"" Undo
" set conf
set undodir=$HOME/.vim/undodir
set undofile

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
