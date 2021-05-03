
" ----------------------------------------
"		lightline + ale 插件	
" ----------------------------------------

" 关闭缩进及语法高亮
"filetype off
"syntax off

"call plug#begin('~/.vim/plugged')

	" lightline
	"Plug 'itchyny/lightline.vim'
	source ~/.vim/configs/plugins/plug_statusline/plugins_statusline_lightline.vim
	
	" ale
	Plug 'w0rp/ale' 
	Plug 'maximbaz/lightline-ale'

"call plug#end()

