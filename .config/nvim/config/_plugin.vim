" Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'
" Plug 'scrooloose/nerdtree'
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '\.DS_Store']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 20
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,.DS_Store
let NERDTreeShowHidden = 1
" Plug 'dense-analysis/ale'
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ }
" Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep           = '»'
let g:airline_left_sep           = '▶'
let g:airline_right_sep          = '«'
let g:airline_right_sep          = '◀'
let g:airline_symbols.linenr     = '␊'
let g:airline_symbols.linenr     = '␤'
let g:airline_symbols.linenr     = '¶'
let g:airline_symbols.branch     = '⎇'
let g:airline_symbols.paste      = 'ρ'
let g:airline_symbols.paste      = 'Þ'
let g:airline_symbols.paste      = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'onedark'
" Plug 'joshdick/onedark.vim'
colorscheme onedark
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
" Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
" Plug 'LeafCage/yankround.vim'
let g:yankround_max_history = 100
let g:yankround_dir = '~/.config/nvim/cache/yankround'
" Plug 'jwalton512/vim-blade'
let g:blade_custom_directives = ['datetime', 'javascript']
let g:blade_custom_directives_pairs = {
            \   'markdown': 'endmarkdown',
            \   'cache': 'endcache',
            \ }
" Plug 'neoclide/coc.nvim'
let g:coc_global_extensions = [
			\ 'coc-blade',
			\ 'coc-browser',
			\ 'coc-cfn-lint',
			\ 'coc-cmake',
			\ 'coc-deno',
			\ 'coc-docker',
			\ 'coc-emoji',
			\ 'coc-fzf-preview',
			\ 'coc-css',
			\ 'coc-git',
			\ 'coc-go',
			\ 'coc-golines',
			\ 'coc-graphql',
			\ 'coc-html',
			\ 'coc-json',
			\ 'coc-lists',
			\ 'coc-php-cs-fixer',
			\ 'coc-prettier',
			\ 'coc-sh',
			\ 'coc-stylelint',
			\ 'coc-solargraph',
			\ 'coc-spell-checker',
			\ 'coc-sql',
			\ 'coc-svg',
			\ 'coc-toml',
			\ 'coc-tsserver',
			\ 'coc-vimlsp',
			\ 'coc-xml',
			\ 'coc-yaml',
			\ 'coc-yank',
			\ '@yaegassy/coc-ansible',
			\ '@yaegassy/coc-nginx',
			\ '@yaegassy/coc-phpstan',
			\ '@yaegassy/coc-pylsp',
			\ '@yaegassy/coc-volar',
			\ ]
" Plug 'soramugi/auto-ctags.vim'
let g:auto_ctags = 1
let g:auto_ctags_tags_name = '.tags'
