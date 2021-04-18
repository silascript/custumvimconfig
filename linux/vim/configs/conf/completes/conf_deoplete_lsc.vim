" -----------------------------------
"		deoplete 插件配置
" -----------------------------------

let s:deoplresult=commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplresult ==? 1
	" 导入deoplete 配置
	source ~/.vim/configs/conf/completes/conf_deoplete.vim

	" 源
	let g:deoplete#custom#option={
		\'sources': {
		\ '_': ['buffer'],
		\ 'c': ['lsc'],
		\ 'cpp': ['lsc'],
		\ 'python': ['lsc'],
		\ 'rust': ['lsc']
		\},
		\ 'min_pattern_length':1
	\ }
endif


" 导入vim-lsc 配置
source ~/.vim/configs/conf/lsc/conf_plugins_lsc.vim


" 与deoplete搭配使用的clang的源插件
"let s:clangxlresult=commands_basic#ExistPlug('Shougo/deoplete-clangx')
"if s:clangxlresult ==? 1
	


"endif

