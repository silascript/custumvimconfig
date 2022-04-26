
" ----------------------------------------
"				补全插件整合
"				ncm2 简易整合 
" ----------------------------------------

" call plug#begin('~/.local/share/nvim/site/plugged')
	
	" 引入ncm2 基础插件
	source ~/.config/nvim/configs/plugins/plug_complete/plugins_ncm2_basic.vim


	" 简单的补全
	" buffer和路径补全
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'

" call plug#end()

