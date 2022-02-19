"" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'LeafCage/yankround.vim'
Plug 'github/copilot.vim'
Plug 'Shougo/deol.nvim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

"" themes
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" file list
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }

"" ctag
Plug 'majutsushi/tagbar'
Plug 'soramugi/auto-ctags.vim'

"" syntax check & lint & formatter
Plug 'editorconfig/editorconfig-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'cohama/lexima.vim'
Plug 'junegunn/vim-easy-align'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

"" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
