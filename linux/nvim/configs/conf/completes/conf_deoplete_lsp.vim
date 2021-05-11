" -----------------------------------
"	 deoplete + vim-lsp 插件配置
" -----------------------------------
let s:deoplresult=commands_basic#ExistPlug('Shougo/deoplete.nvim')

if s:deoplresult ==? 1
	" deoplete 配置 
	source ~/.config/nvim/configs/conf/completes/conf_deoplete.vim
	
	" 源
	call deoplete#custom#source('lsp',
			\ 'min_pattern_length',
			\ 1)

	"let g:deoplete#custom#option={
		"\'sources': {
		"\ 'c': ['lsp'],
		"\ 'cpp': ['lsp'],
		"\ 'python': ['lsp'],
		"\ 'rust': ['lsp'],
		"\ 'javascript':['lsp'],
		"\ 'typescript':['lsp'],
		"\},
		"\ 'smart_case': v:true
	"\ }

endif

" vim-lsp 配置
source ~/.config/nvim/configs/conf/lsc/conf_plugins_lsp.vim
