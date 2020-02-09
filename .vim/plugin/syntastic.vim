" https://github.com/vim-syntastic/syntastic

" file Syntax Check
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
