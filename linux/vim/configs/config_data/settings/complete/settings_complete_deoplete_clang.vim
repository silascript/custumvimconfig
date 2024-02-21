" -----------------------------------------
"   deoplete + deoplete-clangx 插件套件配置
" -----------------------------------------

"  deoplete 插件基础配置
source ~/.vim/configs/config_data/settings/complete/settings_complete_deoplete_basic.vim

" deoplete-clangx 配置

let s:deoplete_clangx_result = commands_basic#ExistPlug('Shougo/deoplete-clangx')
if s:deoplete_clangx_result ==? 1

	" Change clang binary path
	call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')

	" Change clang options
	call deoplete#custom#var('clangx', 'default_c_options', '')
	call deoplete#custom#var('clangx', 'default_cpp_options', '')

endif



