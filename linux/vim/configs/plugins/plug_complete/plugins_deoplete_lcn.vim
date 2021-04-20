
" ----------------------------------------
"				补全插件插件整合	
"		deoplete + LanguageClient-neovim 
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

	" LanguageClient-neovim
	Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh',
	\ }

" call plug#end()

