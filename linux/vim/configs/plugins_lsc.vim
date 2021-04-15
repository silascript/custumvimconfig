
" ----------------------------------------
"				vim-Plug lsc 配置
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" 基础插件
	source ~/.vim/configs/plugins/plugins_basice.vim
	
	" 标点符号相关
	source ~/.vim/configs/plugins/plugins_punctuation.vim
	
	" 成对符号
	source ~/.vim/configs/plugins/plugins_punctuation.vim

	" theme
	source ~/.vim/configs/plugins/plugins_themes.vim
	
	" 界面显示
	source ~/.vim/configs/plugins/plugins_display.vim
	
	" snippets(整合snippet引擎和snippet库两个插件)
	source ~/.vim/configs/plugins/plugins_snippets.vim

	" lsc
	Plug 'natebosch/vim-lsc'
	

	" markdown 插件
	source ~/.vim/configs/plugins/plugins_markdown.vim

call plug#end()


" ----------------------------------------
"				其他设置
" ----------------------------------------


" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on


" ----------------------------------
"			插件设置
" ----------------------------------

autocmd CompleteDone * silent! pclose

" 为语言指定lsp
let g:lsc_server_commands = {'c':'clangd'}
let g:lsc_server_commands = {'java': 'jdtls'}
let g:lsc_server_commands = {'python':'pyls'}


let g:lsc_enable_autocomplete  = v:true
" let g:lsc_enable_diagnostics   = v:false
" let g:lsc_reference_highlights = v:false

" let g:lsc_auto_map = v:true

set completeopt=menu,menuone,noinsert,noselect


