" -----------------------------
"	 没有补全插件整合方案
" -----------------------------

" 命令
" 基本命令
source ~/.config/nvim/configs/commands/commands_basic.vim

" ---------------------------------------
" 插件集

call plug#begin()

	" 基础插件集
	source ~/.config/nvim/configs/config_data/plugins/plugins_basic.vim

	" 配色插件集
	source ~/.config/nvim/configs/config_data/plugins/plugins_colorschemes.vim

	" 语法高亮插件集
	source ~/.config/nvim/configs/config_data/plugins/plugins_syntaxhl.vim

call plug#end()

" ---------------------------------------

" 配置

" 无插件基础配置
source ~/.config/nvim/configs/config_data/settings/settings_noplugins_basic.vim

" 基础插件配置
source ~/.config/nvim/configs/config_data/settings/settings_plugins_basic.vim


" 配色插件配置
source ~/.config/nvim/configs/config_data/settings/settings_colorschemes.vim




" ---------------------------------------

" keymaps
" source 


