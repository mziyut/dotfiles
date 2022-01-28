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

Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'

" Utilities
Plug 'Shougo/vimshell.vim'
Plug 'thinca/vim-ref'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/seoul256.vim'
Plug 'vim-syntastic/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'gko/vim-coloresque'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-dispatch'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'LeafCage/yankround.vim'
Plug 'wakatime/vim-wakatime'

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

"" terraform
Plug 'hashivim/vim-terraform'

"" github
Plug 'SevereOverfl0w/deoplete-github'

