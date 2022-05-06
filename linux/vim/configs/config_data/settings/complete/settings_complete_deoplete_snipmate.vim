" ------------------------------
"  deoplete snipmate 插件配置
" ------------------------------

"  deoplete 插件基础配置
source ~/.vim/configs/config_data/settings/complete/settings_complete_deoplete_basic.vim

" snipmate 插件配置
source ~/.vim/configs/config_data/settings/settings_plugins_snippets.vim

" deoplete-snipmate 插件配置
let s:deosnipmate_result = commands_basic#ExistPlug('dcampos/deoplete-snipmate')

if s:deosnipmate_result ==? 1
	" 解决 deoplete 与 snipmate 整合时 expand 问题 
	augroup vimrc
		autocmd!
		autocmd vimrc CompleteDone * call deoplete#snipmate#try_expand()
	augroup END
endif



