" -----------------------------------
"	 asyncomplete + vim-lsp 插件配置
" -----------------------------------
let s:asyncresult=commands_basic#ExistPlug('prabirshrestha/asyncomplete.vim')

if s:asyncresult ==? 1
	" asyncomplete 配置 
	source ~/.vim/configs/conf/completes/conf_asyncomplete.vim

	" 源
	" 如果使用vim-lsp 并装了asyncomplete-lsp，就不用配源

endif

" vim-lsp 配置
source ~/.vim/configs/conf/lsc/conf_plugins_lsp.vim
