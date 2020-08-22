" css
augroup augroup-css
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
augroup END
" html
augroup augroup-html
  autocmd!
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
augroup END
" js
augroup augroup-js
  autocmd!
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
augroup END
" md
augroup augroup-md
  autocmd!
  autocmd FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags
augroup END
" php
augroup augroup-php
  autocmd!
  autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
  autocmd FileType php setlocal expandtab
  autocmd FileType php setlocal list
  autocmd FileType php setlocal listchars=tab:+\
  autocmd FileType php setlocal tabstop=4
  autocmd FileType php setlocal shiftwidth=4
  autocmd FileType php setlocal softtabstop=4
augroup END
" py
augroup augroup-py
  autocmd!
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
augroup END
" vim
augroup augroup-vim
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END
" vue
augroup augroup-vue
  autocmd!
  autocmd FileType vue syntax sync fromstart
  autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
augroup END
" xml
augroup augroup-xml
  autocmd!
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END
