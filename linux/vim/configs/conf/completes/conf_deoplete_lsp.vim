" -----------------------------------
"	 deoplete + vim-lsp 插件配置
" -----------------------------------
let s:deoplresult=commands_basic#ExistPlug('Shougo/deoplete.nvim')

if s:deoplresult ==? 1
	" deoplete 配置 
	source ~/.vim/configs/conf/completes/conf_deoplete.vim
	
	" 源
	let g:deoplete#custom#option={
		\'sources': {
		\ '_': ['buffer'],
		\ 'c': ['lsp'],
		\ 'cpp': ['lsp'],
		\ 'python': ['lsp'],
		\ 'rust': ['lsp']
		\},
		\ 'min_pattern_length':1
	\ }

endif

" vim-lsp 配置
source ~/.vim/configs/conf/lsc/conf_plugins_lsp.vim
