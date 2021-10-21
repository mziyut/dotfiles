" map
map <C-n> :NERDTreeToggle<CR>
map <C-e> :Errors<CR>

" nmap
nmap ,v :edit ~/.vimrc<CR>
nmap ga <Plug>(EasyAlign)
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-y> <Plug>(yankround-next)

" xmap
xmap ga <Plug>(EasyAlign)

" inoremap
inoremap <C-c> <Esc>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <Leader>date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
inoremap <Leader>time <C-R>=strftime('%H:%M')<CR>
inoremap <Leader>w3cd <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>
inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" nnoremap
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>
nnoremap Y y$
nnoremap == G=gg
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>

" command
command SP :set paste
command SNP :set nopaste

" vnoremap
vnoremap <silent> <C-p> "0p<CR>
