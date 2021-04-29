
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

	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" 文件类型图标
	" 要在airline之后
	"Plug 'ryanoasis/vim-devicons'
	
	" themes
	source ~/.vim/configs/plugins/plugins_themes.vim
	
	" color
	source ~/.vim/configs/plugins/plugins_color.vim


	" minimap 
	"Plug 'wfxr/minimap.vim'

" call plug#end()


