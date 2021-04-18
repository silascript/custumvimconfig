" ---------------------------------------------------------
"					插件配置(非coc)
" ---------------------------------------------------------

" --------------------------------------------------
"				nerdcommenter 设置
" --------------------------------------------------
let s:nerdcresult = commands_basic#ExistPlug('mbbill/undotree')
if s:nerdcresult ==? 1
	" 默认快捷键
	" 注释 <leader>cc 
	" 取消注释 <leader>c<space> 或者 <leader>cu

	" 注释时插入分隔符
	let g:NERDSpaceDelims = 1
	" 去除尾部空格 
	" let g:NERDTrimTrailingWhitespace = 1

	" 注释前插入空行
	let g:NERDCommentEmptyLines = 1

endif

" ---------------------------------------------
"			cosco 设置
" ---------------------------------------------

let s:cocoresult=commands_basic#ExistPlug('lfilho/cosco.vim')

if s:cocoresult ==? 1
	let g:cosco_filetype_whitelist = ['c','cpp','java','php', 'javascript']
	let g:cosco_filetype_blacklist = ['vim', 'bash']

endif

" ---------------------------------------------
"				UndoTree设置
" ---------------------------------------------
let s:udtresult=commands_basic#ExistPlug('mbbill/undotree')

if s:udtresult ==? 1
	" 设置undo文件存储
	set undodir=~/.undodir/
	set undofile

endif

" ----------------------------------------------------
"					surround使用
" ----------------------------------------------------
" 添加双引号 ysiw+"
" 如果要添加tag符号，即尖括号可以使用快捷命令ysiwt
" 注意如果是ysiw<这方式，必须是左尖括号，才是成对tag
" 如果是ysiw> 使用了右尖括号,那就会变成单tag
" 替换格式: cs 符号 符号
" 如将tag符号即<>这种尖括号替换成其他符号可以使用cst快捷命令
" 删除格式: ds 符号
" 行包围符号格式: yss 符号
" 行包围添加小括号快捷命令: yssb
" 行包围尖括号得分两步：yss<或者ysst 然后输入尖括号中的内容
" 行包围尖括号道理同新加一样，分左尖括号和右尖括号，左双右单
"
" ---------------------------------------------------------


" ------------------------------------------------
"					airline设置
" ------------------------------------------------
let s:aleresult= commands_basic#ExistPlug('vim-airline/vim-airline')
if s:aleresult==1
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

" ------------------------------------------
"				startify设置
" ------------------------------------------

let s:startresult=commands_basic#ExistPlug('mhinz/vim-startify')

if s:startresult ==? 1
	let g:startify_files_number = 8
	let g:startify_custom_header =[
		\		'+------------------------------+',  
		\		'|  GoodLuck!!!				    |',  
		\		'|                              |',  
		\		'+----------------+-------------+',  
		\ ] 

endif

" ------------------------------------------
"				彩虹括号
" ------------------------------------------

let s:rbesult= commands_basic#ExistPlug('luochen1990/rainbow')
if s:rbesult ==? 1
	" 启用或关闭彩虹括号
	let g:rainbow_active = 1
	" let g:rainbow_active = 0
	" 配色
	let g:rainbow_conf = {
	\	'guifgs': ['SlateGray1','MistyRose1', 'PaleGreen3', 'LightGoldenrod1', 'Honeydew1', 'Salmon1'],
	\	'ctermfgs': ['lightgreen', 'lightyellow', 'lightcyan', 'lightmagenta']
	\	}

endif




