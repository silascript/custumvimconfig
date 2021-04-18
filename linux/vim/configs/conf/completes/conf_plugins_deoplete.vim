" -----------------------------------
"		deoplete 插件配置
" -----------------------------------

let s:deoplresult=commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplresult ==? 1
	" 启动deoplete
	let g:deoplete#enable_at_startup = 1
	let g:auto_complete_delay=10
	

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


" 与deoplete搭配使用的clang的源插件
"let s:clangxlresult=commands_basic#ExistPlug('Shougo/deoplete-clangx')
"if s:clangxlresult ==? 1
	


"endif

