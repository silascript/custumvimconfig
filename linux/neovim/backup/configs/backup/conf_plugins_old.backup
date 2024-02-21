
" ==========================================================
" 						插件配置
" ==========================================================


" ===================
" 		plug config
" ===================

" nerdcommentor config
" 注释插入空格
let g:NERDSpaceDelims = 1

" 注释插件空行
let g:NERDCommentEmptyLines = 1


" ==================
" 	airline config
" ==================
let g:airline_extensions = ['branch','tabline']

" buffer文件名及路径显示格式
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" 开启powerline font
let g:airline_powerline_fonts=1

" 设置airline的theme
" let g:airline_theme='dark'
let g:airline_theme='wombat'
" let g:airline_theme='one'
" let g:airline_theme='onedark'
" let g:airline_theme='gruvbox'


" -----------------------------------------------
"					彩虹括号
" -----------------------------------------------
" 激活插件
let g:rainbow_active = 1
" 颜色设置
let g:rainbow_conf = {
	\	'guifgs': ['SlateGray1','MistyRose1', 'PaleGreen3', 'LightGoldenrod1', 'Honeydew1', 'Salmon1'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta']
\	}


" ---------------------------------------------------------
"						 surround使用
" ---------------------------------------------------------
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


" -----------------------------
"		UndoTree设置
" -----------------------------
" 设置undo文件的存放目录
set undofile
set undodir=~/.local/share/nvim/.undodir


" -----------------------
"		GitGutter设置
" -----------------------
" 开启gitgutter
let g:gitgutter_enabled = 1


" -----------------------
" 		tagbar设置
" -----------------------
let g:tagbar_width=25

" -----------------------
" 		SnipMate设置
" -----------------------
let g:snipMate = {'snippet_version' : 1}

" -----------------------
"   vim-markdown-fold
" -----------------------
let g:markdown_fold_style = 'nested'
set foldlevel=3

