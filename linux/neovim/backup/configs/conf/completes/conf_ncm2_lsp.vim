" -----------------------------------
"			ncm2 +vim-lsp 配置
" -----------------------------------

let s:ncmresult = commands_basic#ExistPlug('ncm2/ncm2')

if s:ncmresult ==? 1
	source ~/.config/nvim/configs/conf/completes/conf_ncm2.vim

	" 源
	

endif

" 导入vim-lsp配置
source ~/.config/nvim/configs/conf/lsc/conf_plugins_lsp.vim


