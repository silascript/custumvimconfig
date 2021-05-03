" ---------------------------------------------------------
"				 statusline	插件配置
" ---------------------------------------------------------

" ------------------------------------------------
"					airline设置
" ------------------------------------------------
let s:aleresult= commands_basic#ExistPlug('vim-airline/vim-airline')
if s:aleresult ==? 1
	" let g:airline#extensions#tabline#enabled = 1
	let s:aleresult = commands_basic#ExistPlug('dense-analysis/ale')
	if s:aleresult ==? 1
		let g:airline_extensions = ['branch','tabline','ale']
	else
		let g:airline_extensions = ['branch','tabline']
	endif
	" buffer文件名及路径显示格式
	let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
	
	" airline样式设置
	" let g:airline_theme = 'dark'
	" let g:airline_theme = 'wombat'
	let g:airline_theme = 'base16'

	" 使用powerline font
	 "let g:airline_powerline_fonts=1

	if !exists('g:airline_symbols')
	   let g:airline_symbols = {}
	endif


	let g:airline_left_sep = ''
	let g:airline_right_sep = ''

	let g:airline_left_alt_sep = ''
	let g:airline_right_alt_sep = ''

	let g:airline_symbols.maxlinenr = ''
	let g:airline_symbols.branch = ''

	let g:airline_symbols.readonly = ''

endif

" ------------------------------------------------
"				lightline 设置
" ------------------------------------------------
let s:lightlineresult= commands_basic#ExistPlug('itchyny/lightline.vim')
if s:lightlineresult ==? 1
	
	" 设置样式
	let g:lightline = {
	\ }

	let s:llaleresult = commands_basic#ExistPlug('maximbaz/lightline-ale')
	if s:llaleresult ==? 1
		
		" 显示模块 

		let g:lightline = {
			\ 'colorscheme': 'materia',
			\ 'tabline': {
			  \ 'left': [ [ 'tabs' ] ],
			  \ 'right': [ ['close'],[ 'gitbranch'] ],
			\ },
			\ 'active':{
				\ 'left': [ 
					\ [ 'mode', 'paste' ],
					\ [ 'readonly','gitbranch', 'filename', 'modified'],
					\ [ 'gitinfo', 'method' ]
				\ ],
				\ 'right': [
					\ [
						\ 'linter_checking', 
						\ 'linter_errors', 
						\ 'linter_warnings', 
						\ 'linter_infos', 
						\ 'linter_ok'
					\ ],
					\ [
						\ 'filetype',
						\ 'fileformat',
						\ 'fileencoding', 
						\ 'hex', 
						\ 'asc', 
						\ 'lineinfo'
					\ ],
				\ ] 
			\ },
			\ 'separator': { 'left': "", 'right': ""},
			\ 'subseparator': { 'left': "", 'right': ""},
			\ 'component_function':{
			\ 'filetype': 'MyFiletype',
				\ 'fileformat': 'MyFileformat',
				\ 'gitbranch': 'FugitiveHead',
				\ 'lineinfo':'LightlineLineinfo'
			\ }
		\ }


		let g:lightline.component = {
			\ 'lineinfo': ' '.'%l:%c',
			\ 'readonly':  '%{&readonly?"":""}',
		\ }	


		" 设置ale
		let g:lightline.component_expand = {
		  \  'linter_checking': 'lightline#ale#checking',
		  \  'linter_infos': 'lightline#ale#infos',
		  \  'linter_warnings': 'lightline#ale#warnings',
		  \  'linter_errors': 'lightline#ale#errors',
		  \  'linter_ok': 'lightline#ale#ok',
		\ }		
		
		let g:lightline.component_type = {
		  \ 'linter_checking': 'right',
		  \ 'linter_infos': 'right',
		  \ 'linter_warnings': 'warning',
		  \ 'linter_errors': 'error',
		  \ 'linter_ok': 'right',
		\ }


		"let g:lightline.component_visible_condition = {
			"\ 'modified': '&modified||!&modifiable',
			"\ 'readonly': '&readonly',
			"\ 'paste': '&paste',
			"\ 'spell': '&spell' }


	endif
	
		" 使用vim-devicons显示文件类型及系统图标
		function! MyFiletype()
		  return winwidth(0) > 70 ? (strlen(&filetype) ? '' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
		endfunction

		function! MyFileformat()
		  return winwidth(0) > 70 ? ('' . WebDevIconsGetFileFormatSymbol()) : ''
		endfunction
		
		" 行信息
		function! LightlineLineinfo() abort
			return &filetype ==? 'help'		   ? ''  :
			\ &filetype ==? 'defx'             ? ' ' :
			\ &filetype ==? 'coc-explorer'     ? ' ' :
			\ &filetype ==? 'denite'           ? ' ' :
			\ &filetype ==? 'tagbar'           ? ' ' :
			\ &filetype ==? 'vista_kind'       ? ' ' :
			\ &filetype ==? 'vista'            ? ' ' :
			\ &filetype =~? '\v^mundo(diff)?$' ? ' ' :
			\ printf(' %2ld%% ☰ %3ld:%3ld', 100*line('.')/line('$'),  line('.'), col('.'))
	endfunction

endif

" ----------------------------------------------
" lightline color theme 插件设置
let s:llthemeresult = commands_basic#ExistPlug('sainnhe/lightline_foobar.vim')
if s:llthemeresult ==? 1
	" 
	" 可选 theme: colored_dark hypsteria_alter neodark_alter deus_beta_dark
	let g:lightline.colorscheme = 'deus_beta_dark' 
endif

