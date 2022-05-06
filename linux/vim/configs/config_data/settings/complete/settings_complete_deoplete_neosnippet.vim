" ------------------------------
"  deoplete neosnippet 插件配置
" ------------------------------

"  deoplete 插件基础配置
source ~/.vim/configs/config_data/settings/complete/settings_complete_deoplete_basic.vim

" neosnippet 插件配置
let s:neosnippet_result = commands_basic#ExistPlug('Shougo/neosnippet.vim')
if s:neosnippet_result ==? 1

	set completeopt=menu

	let g:neosnippet#disable_runtime_snippets = {'_' : 1}
	" 设置 vim-snippets 路径
	let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'	

endif


