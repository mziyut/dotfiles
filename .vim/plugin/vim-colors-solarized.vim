" https://github.com/altercation/vim-colors-solarized

" Color Scheme
" init solarized color config
if empty(glob('~/.vim/colors/solarized.vim'))
  silent !curl -fLo ~/.vim/colors/solarized.vim --create-dirs
    \ https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
endif

" plugin
Plug 'altercation/vim-colors-solarized'

"" Settings
set background=dark
colorscheme solarized
if &term =~ "xterm-256color" || "screen-256color"
    set t_Co=256
    set t_Sf=[3%dm
    set t_Sb=[4%dm
elseif &term =~ "xterm-color"
    set t_Co=8
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
