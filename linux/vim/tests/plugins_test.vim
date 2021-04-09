
" ---------------------------
"		vim-Plug 配置
" ---------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" 光标样式切换
	Plug 'jszakmeister/vim-togglecursor'

	" 真彩theme
	Plug 'morhetz/gruvbox'
	
	" 自动括号
	Plug 'jiangmiao/auto-pairs'
	

call plug#end()


" ----------------------------------
"			插件设置
" ----------------------------------


" ----------------------------------------
"				其他设置
" ----------------------------------------


" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on

