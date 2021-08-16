
" ----------------------------------------
"				Markdown插件	
" ----------------------------------------

" call plug#begin('~/.vim/plugged')
	
	" markdown预览
	Plug 'iamcco/markdown-preview.nvim', {'do':{ -> mkdp#util#install() },'for':['markdown', 'vim-plug']}
	
	" VIM Table Mode 用于简化markdown使用表格操作
	Plug 'dhruvasagar/vim-table-mode'

" call plug#end()

