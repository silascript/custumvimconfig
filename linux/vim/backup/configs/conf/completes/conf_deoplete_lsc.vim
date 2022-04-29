" -----------------------------------
"		deoplete 插件配置
" -----------------------------------

let s:deoplresult = commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplresult ==? 1
	" 导入deoplete 配置
	source ~/.vim/configs/conf/completes/conf_deoplete.vim

	" 源
	" 设置触发补全的字符数
	call deoplete#custom#source('lsc',
		\ 'min_pattern_length',
		\ 1)	

	"let g:deoplete#custom#option={
		"\'sources': {
		"\ '_': ['buffer'],
		"\ 'c': ['lsc'],
		"\ 'cpp': ['lsc'],
		"\ 'python': ['lsc'],
		"\ 'rust': ['lsc']
		"\},
		"\'smart_case': v:true,
	"\ }
endif

" snippet
" snipmate
let s:smateresult = commands_basic#ExistPlug('garbas/vim-snipmate')
if s:smateresult ==? 1

	call deoplete#custom#source('snipMate', 'rank', 600)

endif

" ultisnips
let s:usnipresult = commands_basic#ExistPlug('SirVer/ultisnips')
if s:usnipresult ==? 1

	call deoplete#custom#source('ultisnips', 'rank', 600)

endif

" 导入vim-lsc 配置
source ~/.vim/configs/conf/lsc/conf_plugins_lsc.vim


" 与deoplete搭配使用的clang的源插件
"let s:clangxlresult=commands_basic#ExistPlug('Shougo/deoplete-clangx')
"if s:clangxlresult ==? 1
	


"endif

