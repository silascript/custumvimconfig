" ---------------------------------------------------
"	 deoplete + LanguageClient-neovim 插件配置
" ---------------------------------------------------

let s:deoplresult=commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplresult ==? 1
	
	" deoplete 配置
	source ~/.config/nvim/configs/conf/completes/conf_deoplete.vim

	"call deoplete#custom#source('LanguageClient',
            "\ 'min_pattern_length',
            "\ 2)


	" 源
	let g:deoplete#custom#option={
		\'sources': {
		\ '_': ['buffer'],
		\ 'c': ['LanguageClient'],
		\ 'cpp': ['LanguageClient'],
		\ 'python': ['LanguageClient'],
		\ 'rugy': ['LanguageClient'],
		\ 'rust': ['LanguageClient']
		\}
	\ }

endif

" 导入LanguageClient 配置
source ~/.config/nvim/configs/conf/lsc/conf_plugins_lcn.vim


