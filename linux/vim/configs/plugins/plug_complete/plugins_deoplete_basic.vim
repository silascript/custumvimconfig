
" ----------------------------------------
"				补全插件整合
"				deoplete 基础插件 
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
	

" call plug#end()

