
" ----------------------------------------
"				基础插件 
" ----------------------------------------

" call plug#begin('~/.vim/plugged')
	
	" 光标样式切换
	Plug 'jszakmeister/vim-togglecursor'

	" 高亮光标所在词
	Plug 'itchyny/vim-cursorword'
	
	" 高亮复制部分
	Plug 'machakann/vim-highlightedyank'

	" 快速注释
	Plug 'scrooloose/nerdcommenter'
	
	" 添加环绕符号 
	Plug 'tpope/vim-surround'

	" 文本对象相关
	Plug 'wellle/targets.vim'
	
	" tags
	source ~/.vim/configs/plugins/plugins_tagtools.vim

	" 滚动status 
	"Plug 'ojroques/vim-scrollstatus'

" call plug#end()


