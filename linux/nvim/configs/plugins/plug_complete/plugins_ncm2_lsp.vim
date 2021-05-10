
" ----------------------------------------
"				补全插件整合
"				ncm2 + vim-lsp
" ----------------------------------------

" call plug#begin('~/.local/share/nvim/site/plugged')
	
	" 引入简易整合包
	source ~/.config/nvim/configs/plugins/plug_complete/plugins_ncm2_simple.vim

	" vim-lsp
	Plug 'prabirshrestha/vim-lsp'
	Plug 'ncm2/ncm2-vim-lsp'

" call plug#end()

