" Color Scheme
NeoBundle 'altercation/vim-colors-solarized'
" File Brows
NeoBundle 'scrooloose/nerdtree'
" file Syntax Check
NeoBundle "scrooloose/syntastic"
" align setting
NeoBundleLazy 'junegunn/vim-easy-align', {'autoload': {'commands' : ['EasyAlign'], 'mappings' : ['<Plug>(EasyAlign)'], }}
" markdown
NeoBundle 'rcmdnk/vim-markdown'
" {}()[]
NeoBundle 'Townk/vim-autoclose'
NeoBundleLazy 'tpope/vim-endwise', {
  \ 'autoload' : { 'insert' : 1,}}
" vimproc
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }
" unite
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim', {
  \ 'depends' : 'Shougo/unite.vim'
  \ }
" complete
NeoBundleLazy 'Shougo/neocomplete.vim', {
  \ 'depends' : 'Shougo/vimproc',
  \ 'autoload' : { 'insert' : 1,}
  \ }
NeoBundle 'violetyk/neocomplete-php.vim'
" yank, snippet
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'LeafCage/yankround.vim'
" white space
NeoBundle 'bronson/vim-trailing-whitespace'
" git
NeoBundle 'airblade/vim-gitgutter'
" airline
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
" editorconfig
NeoBundle 'editorconfig/editorconfig-vim'
" php
"NeoBundle 'm2mdas/phpcomplete-extended'
"NeoBundle 'm2mdas/phpcomplete-extended-laravel'
"NeoBundle 'm2mdas/phpcomplete-extended-symfony'
NeoBundle 'arnaud-lb/vim-php-namespace'
" html, templete
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'tpope/vim-haml'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'jwalton512/vim-blade'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'beyondwords/vim-twig'
" ruby
NeoBundle "tpope/vim-rails"
NeoBundle "tpope/vim-rake"
NeoBundle "tpope/vim-projectionist"
NeoBundle "thoughtbot/vim-rspec"
NeoBundle "majutsushi/tagbar"
" go
NeoBundle "fatih/vim-go"
" wakatime
NeoBundle "wakatime/vim-wakatime"
" TypeScript
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'clausreinke/typescript-tools'
" kotlin
NeoBundle 'udalov/kotlin-vim'
