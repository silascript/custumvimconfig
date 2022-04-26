" -----------------------------
"			基础插件整合方案
" -----------------------------

" 命令
" 基本命令
source ~/.config/nvim/configs/commands/commands_basic.vim

" ---------------------------------------

" 插件集
" source 
call plug#begin()

	" 引入基础插件集
	source ~/.config/nvim/configs/config_data/plugins/plugins_basic.vim

call plug#end()

" ---------------------------------------

" 配置

" 无插件基础配置
" source ~/.config/nvim/configs/config_data/settings/settings_noplugins_basic.vim

" 基础插件配置
source ~/.config/nvim/configs/config_data/settings/settings_plugins_basic.vim 

" ---------------------------------------

" keymaps
" source 


