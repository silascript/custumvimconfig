
" ----------------------------------------
"				vim-Plug lsc 配置
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	source ~/.vim/configs/plugins/plugins_basice.vim
	
	source ~/.vim/configs/plugins/plugins_themes.vim

	source ~/.vim/configs/plugins/plugins_display.vim
	
	source ~/.vim/configs/plugins/plugins_snippets.vim

	" lsc
	Plug 'natebosch/vim-lsc'

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
let glsc_server_commands = {'c':'clangd'}
let g:lsc_server_commands = {'java': 'jdtls'}





