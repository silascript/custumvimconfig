
" ----------------------------------------
"			airline + ale 插件	
" ----------------------------------------

" 关闭缩进及语法高亮
"filetype off
"syntax off

"call plug#begin('~/.local/share/nvim/site/plugged/')

	" airline
	"Plug 'vim-airline/vim-airline'
	"Plug 'vim-airline/vim-airline-themes'
	source ~/.config/nvim/configs/plugins/plug_statusline/plugins_statusline_airline.vim

	" ale
	Plug 'dense-analysis/ale'

	"Plug 'w0rp/ale'


"call plug#end()

