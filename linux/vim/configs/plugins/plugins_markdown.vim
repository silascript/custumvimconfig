
" ----------------------------------------
"				Markdown插件	
" ----------------------------------------

" call plug#begin('~/.vim/plugged')
	
	" markdown预览
	" markdown 各种预览插件有不同的依赖
	" 依赖nodejs
	Plug 'iamcco/markdown-preview.nvim', {'do':{ -> mkdp#util#install() },'for':['markdown', 'vim-plug']}
	" Plug 'FuDesign2008/MarkdownViewer.vim'
	
	" 依赖python
	"Plug 'JamshedVesuna/vim-markdown-preview'
	"Plug 'D0n9X1n/markdown-preview.vim'
	
	" Plug 'greyblake/vim-preview'

	" 使用 php
	" Plug 'lissaferreira/markdown-preview.vim'

	" 快速生成表格
	Plug 'nora75/markdowntable'

	" VIM Table Mode 用于简化markdown使用表格操作
	Plug 'dhruvasagar/vim-table-mode'

	


" call plug#end()

