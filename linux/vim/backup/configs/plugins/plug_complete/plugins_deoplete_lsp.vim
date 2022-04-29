
" ----------------------------------------
"				补全插件整合
"			deoplete + vim-lsp
"		没有使用deoplete-vim-lsp插件
"	需要在deoplete配置中手动配vim-lsp源
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
	
	" vim-lsp
	Plug 'prabirshrestha/vim-lsp'

	" 用于deoplete 与vim-lsp对接插件
	Plug 'lighttiger2505/deoplete-vim-lsp'


" call plug#end()

