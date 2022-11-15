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

if has('nvim')
	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
	" remap for complete to use tab and <cr>
	inoremap <silent><expr> <TAB>
				\ coc#pum#visible() ? coc#pum#next(1):
				\ <SID>check_back_space() ? "\<Tab>" :
				\ coc#refresh()
	inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
endif

" nnoremap
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>
nnoremap Y y$
nnoremap == G=gg
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>
nnoremap <C-f> :CocList files<CR>
nnoremap <C-g> :CocFzfList grep<CR>
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :CocFzfList<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>

" command
command SP :set paste
command SNP :set nopaste

" vnoremap
vnoremap <silent> <C-p> "0p<CR>
