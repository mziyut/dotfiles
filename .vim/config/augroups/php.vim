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
