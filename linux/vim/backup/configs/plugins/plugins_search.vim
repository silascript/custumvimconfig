
" ----------------------------------------
"				搜索插件	
" ----------------------------------------

" 关闭缩进及语法高亮
"filetype off
"syntax off

"call plug#begin('~/.vim/plugged')

	" fzf
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	
	" LeaderF
	"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

"call plug#end()

