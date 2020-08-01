""" vim-plug Automatic installation
if empty(glob('~/.config/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""" install plugin
call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/plugin.vim
call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

""" set config
source ~/.config/nvim/config/config.vim
