" ---------------------------------------------------------
"				 statusline	插件配置
" ---------------------------------------------------------
" 显示标签栏
set showtabline=2

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
	
	" 状态栏只显示文件名
	let g:airline_section_c_only_filename = 1

	" 显示vista 信息
	let g:airline#extensions#vista#enabled = 1

	" branch 样式
	"let g:airline#extensions#branch#format = 1
	"let g:airline#extensions#capslock#enabled = 1
	
	
	" buffer文件名及路径显示格式
	"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
	"let g:airline#extensions#tabline#show_tab_count = 1

	" 标签栏显示关闭按钮
	 let g:airline#extensions#tabline#show_close_button = 1
	 "let g:airline#extensions#tabline#close_symbol = 'X'
	

	" airline样式设置
	try
		let g:airline_theme = 'tender'
	catch
		let g:airline_theme = 'base16'
	endtry

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
	"let g:airline_symbols.branch = ''
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
			  \ 'left': [ [ 'buffers' ] ],
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
				\ 'gitbranch': 'BranchFugitiveHead',
				\ 'lineinfo':'LightlineLineinfo',
				\ 'method': 'NearestMethodOrFunction',
			\ }
		\ }

		" tab设置
		" let g:lightline.tab_component_function = {
			" \ 'filename':'TabsFnameFunc',
		" \ }
		" 标签栏启用图标
		let g:lightline#bufferline#enable_devicons = 1
		" 未命名文件
		let g:lightline#bufferline#unnamed      = '[No Name]'		
		" 启用unicode字符显示标签栏状态图标 比如"只读" "正在修改"等
		let g:lightline#bufferline#unicode_symbols=1
		

		let g:lightline.component = {
			\ 'readonly':  '%{&readonly?"":""}',
		\ }	


		" 设置ale
		let g:lightline.component_expand = {
			\ 'buffers':'lightline#bufferline#buffers', 
		  \  'linter_checking': 'lightline#ale#checking',
		  \  'linter_infos': 'lightline#ale#infos',
		  \  'linter_warnings': 'lightline#ale#warnings',
		  \  'linter_errors': 'lightline#ale#errors',
		  \  'linter_ok': 'lightline#ale#ok',
		\ }		
		
		let g:lightline.component_type = {
		  \ 'buffers': 'tabsel',
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
		  return winwidth(0) > 70 ? (&fileencoding . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
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
			\ printf('%3ld%% %4ld:%3ld', 100*line('.')/line('$'),  line('.'), col('.'))
	endfunction
	
	" 在状态栏显示vista插件获取的函数
	function! NearestMethodOrFunction() abort
	  return get(b:, 'vista_nearest_method_or_function', '')
	endfunction
	
	" gitbranch显示样式
	function! BranchFugitiveHead() abort
			try
				let fh= FugitiveHead()
				return fh !=''?' '.fh : ''
			catch
				return ''
			endtry
	endfunction

	" tabs样式 给tab上的文件名后加上文件类型图标
	" function! TabsFnameFunc(n) abort
		 " let fname = lightline#tab#filename(a:n)
		 " return fname == '[No Name]' ? fname : fname .' '.WebDevIconsGetFileTypeSymbol() 
	" endfunction

" ----------------------------------------------
" lightline color theme 插件设置
	"let s:llthemeresult = commands_basic#ExistPlug('sainnhe/lightline_foobar.vim')
	"if s:llthemeresult ==? 1

		try
			" tender插件的theme
			let g:lightline.colorscheme = 'deus_beta_dark' 
		catch
			" foobar 的theme
			" 可选 theme: colored_dark hypsteria_alter neodark_alter deus_beta_dark
			let g:lightline.colorscheme = 'default' 

		endtry
	"endif
endif





