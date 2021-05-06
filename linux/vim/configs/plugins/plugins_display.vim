
" ----------------------------------------
"				界面显示插件	
" ----------------------------------------

" call plug#begin('~/.vim/plugged')
	
	" 开始页面
	Plug 'mhinz/vim-startify'

	" 彩虹括号
	Plug 'luochen1990/rainbow'

	" mark 显示
	Plug 'kshenoy/vim-signature'

	" statusline
	"lightline
	"source ~/.vim/configs/plugins/plugins_statusline.vim
	source ~/.vim/configs/plugins/plug_statusline/plugins_statusline_lightline_ale.vim

	"airline
	"source ~/.vim/configs/plugins/plug_statusline/plugins_statusline_airline_ale.vim

	" 文件类型图标
	" 要在airline之后
	"Plug 'ryanoasis/vim-devicons'
	
	" themes
	source ~/.vim/configs/plugins/plugins_themes.vim
	
	" color
	source ~/.vim/configs/plugins/plugins_color.vim
	
	" 指示器
	"source ~/.vim/configs/plugins/plugins_indicator.vim

	" minimap 
	"Plug 'wfxr/minimap.vim'

" call plug#end()


