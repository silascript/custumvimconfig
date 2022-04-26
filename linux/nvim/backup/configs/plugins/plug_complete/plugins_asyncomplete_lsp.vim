
" ----------------------------------------
"				补全插件整合
"			asyncomplete + vim-lsp
" ----------------------------------------

" call plug#begin('~/.local/share/nvim/site/plugged')
	
	" 引入asyncomplete基础插件
	source ~/.config/nvim/configs/plugins/plug_complete/plugins_asyncomplete_basic.vim
	
	" vim-lsp
	Plug 'prabirshrestha/vim-lsp'

	" 用于 asyncomplete 与vim-lsp对接插件
	" 使用此插件，asyncomplete配置时就不用指定源(如果你使用的是vim-lsp作为lsc的话)
	Plug 'prabirshrestha/asyncomplete-lsp.vim'


" call plug#end()

