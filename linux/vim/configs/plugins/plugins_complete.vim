
" ----------------------------------------
"				补全插件	
" ----------------------------------------

" call plug#begin('~/.vim/plugged')
	
	" deoplete
	if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
	
	" c、c++的源
	"Plug 'Shougo/deoplete-clangx'
	" 与vim-lsc插件对接
	Plug 'hrsh7th/deoplete-vim-lsc'

" call plug#end()

