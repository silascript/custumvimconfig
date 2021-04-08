
" ----------------------------------------
"				vim-Plug 配置
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" 光标样式切换
	Plug 'jszakmeister/vim-togglecursor'

	" coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}	

call plug#end()


" ----------------------------------------
"				其他设置
" ----------------------------------------


" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on


" ----------------------------------
"			插件设置
" ----------------------------------

" coc 通用配置
source ./coc_conf_common.vim

" coc 插件设置
" let g:coc_global_extensions = ['coc-json', 'coc-git']



