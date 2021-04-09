" ----------------------------------------
"			插件配置(非coc)
" ----------------------------------------

" -----------------------------
" nerdcommenter 设置
" -----------------------------
" 默认快捷键
" 注释 <leader>cc 
" 取消注释 <leader>c<space> 或者 <leader>cu

" 注释时插入分隔符
let g:NERDSpaceDelims = 1
" 去除尾部空格 
" let g:NERDTrimTrailingWhitespace = 1

" 注释前插入空行
let g:NERDCommentEmptyLines = 1



" ----------------------------
"		 airline设置
" ----------------------------

" let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['branch','tabline']

" buffer文件名及路径显示格式
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" airline样式设置
" let g:airline_theme = 'dark'
" let g:airline_theme = 'wombat'
let g:airline_theme = 'base16'

" 使用powerline font
" let g:airline_powerline_fonts=1

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


" ----------------------------
"		 startify设置
" ----------------------------
let g:startify_files_number = 8
let g:startify_custom_header =[
	\		'+------------------------------+',  
	\		'|  GoodLuck!!!				    |',  
	\		'|                              |',  
	\		'+----------------+-------------+',  
	\ ] 



" -----------------------------
"			彩虹括号
" -----------------------------
" 启用或关闭彩虹括号
let g:rainbow_active = 1
" let g:rainbow_active = 0
" 配色
let g:rainbow_conf = {
\	'guifgs': ['SlateGray1','MistyRose1', 'PaleGreen3', 'LightGoldenrod1', 'Honeydew1', 'Salmon1'],
\	'ctermfgs': ['lightgreen', 'lightyellow', 'lightcyan', 'lightmagenta']
\	}






