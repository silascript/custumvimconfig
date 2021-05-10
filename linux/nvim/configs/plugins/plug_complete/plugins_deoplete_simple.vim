
" ----------------------------------------
"				补全插件整合
"	deoplete + deoplete自已实现的lsc插件
" ----------------------------------------

" call plug#begin('~/.local/share/nvim/site/plugged')
	
	" deoplete
	if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
	
	" c、c++的lsc
	Plug 'Shougo/deoplete-clangx'


" call plug#end()

