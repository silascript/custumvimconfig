" ----------------------------------
"   vim-auto-popmenu + 字典 插件配置
" ----------------------------------

"  vim-auto-popmenu 插件配置
source ~/.vim/configs/config_data/settings/complete/settings_complete_autopopmenu_basic.vim

" 字典配置
let s:autopopmenu_dict_result = commands_basic#ExistPlug('skywind3000/vim-dict')
if s:autopopmenu_dict_result ==? 1
	
	" 配置字典存储位置
	let g:vim_dict_dict = [
    \ '~/.vim/plugged/vim-dict',
    \ ]

endif


