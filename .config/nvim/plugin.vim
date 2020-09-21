" deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" unite: https://github.com/Shougo/unite.vim
Plug 'Shougo/unite.vim'
if executable('ag')
  " Use ag in unite grep source.
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = 'HRn'
endif
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
Plug 'Shougo/neomru.vim'

" Utilities
Plug 'Shougo/vimshell.vim'
Plug 'thinca/vim-ref'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '\.DS_Store']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize = 20
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,.DS_Store
let NERDTreeShowHidden = 1
Plug 'junegunn/seoul256.vim'
Plug 'vim-syntastic/syntastic'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_aggregate_errors = 1
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_quite_warnings=1
let g:syntastic_check_on_open = 1
let g:syntastic_mode_map = {
		\ 'mode': 'passive',
		\ 'active_filetypes': [
			\ 'ruby',
			\ 'php',
			\ 'javascript',
		\ ]
	\ }
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['jshint','eslint']
let g:syntastic_php_checkers=['php','phpcs','phpmd']
let g:syntastic_python_checkers = ['pylint']
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'molokai'
Plug 'vim-airline/vim-airline'
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
Plug 'gko/vim-coloresque'
Plug 'altercation/vim-colors-solarized'
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
Plug 'tpope/vim-dispatch'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'LeafCage/yankround.vim'
let g:yankround_max_history = 100
let g:yankround_dir = '~/.config/nvim/cache/yankround'

"" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" language

"" php
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install', 'for': 'php'  }
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'kristijanhusak/deoplete-phpactor', { 'for': 'php' }
Plug 'lvht/phpcd.vim', { 'do': 'composer install', 'for': 'php' }
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'
let g:blade_custom_directives = ['datetime', 'javascript']
let g:blade_custom_directives_pairs = {
            \   'markdown': 'endmarkdown',
            \   'cache': 'endcache',
            \ }

"" ruby
Plug 'Shougo/deoplete-rct', { 'for': 'ruby' }
Plug 'fishbullet/deoplete-ruby', { 'for': 'ruby' }
Plug 'osyo-manga/vim-monster', { 'do': 'gem install rcodetools', 'for': 'ruby' }
Plug 'basyura/unite-rails'
Plug 'tpope/vim-rake'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-endwise'
Plug 'yuku/vim-ref-ri'
Plug 'slim-template/vim-slim'

"" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make', 'for': 'go' }

"" typescript
Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install'  }
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
if has('nvim')
  Plug 'mhartington/nvim-typescript', { 'do': './install.sh', 'for': 'ts' }
endif

"" javascript
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': 'js' }
Plug 'wokalski/autocomplete-flow', { 'for': 'js' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"" html
Plug 'vim-scripts/HTML-AutoCloseTag'

"" css
Plug 'hail2u/vim-css3-syntax'

"" emoji
Plug 'fszymanski/deoplete-emoji'

"" github
Plug 'SevereOverfl0w/deoplete-github'

"" wp-hooks
Plug 'mte90/deoplete-wp-hooks', { 'do': './install.sh' }


