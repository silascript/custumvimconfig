" ------------------------------------
"	 整全了 snipmate 插件的整合方案
" ------------------------------------

" 命令
" 基本命令
source ~/.vim/configs/commands/commands_basic.vim

" ---------------------------------------
" 插件集

call plug#begin()

	" 基础插件集
	source ~/.vim/configs/config_data/plugins/plugins_basic.vim

	" 配色插件集
	source ~/.vim/configs/config_data/plugins/plugins_colorschemes.vim

	" 语法高亮插件集
	source ~/.vim/configs/config_data/plugins/plugins_syntaxhl.vim

	" 显示插件集
	" 包括 statusline 文件类型图标 mark标记显示等
	source ~/.vim/configs/config_data/plugins/plugins_display.vim
	
	" snipmate
	source ~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim
	

call plug#end()

" ---------------------------------------

" 配置

" 无插件基础配置
source ~/.vim/configs/config_data/settings/settings_noplugins_basic.vim

" 基础插件配置
source ~/.vim/configs/config_data/settings/settings_plugins_basic.vim


" 配色插件配置
source ~/.vim/configs/config_data/settings/settings_colorschemes.vim


" statusline 插件配置
source ~/.vim/configs/config_data/settings/settings_plugins_statusline.vim


" snippets 插件配置
" settings_plugins_snippets 这个配置引入了snipmate ultisnips 及 neosnippet 三个snippets引擎的配置
" source ~/.vim/configs/config_data/settings/settings_plugins_snippets.vim
" snipmate 配置
source ~/.vim/configs/config_data/settings/snippet/settings_plugins_snippets_snipmate.vim

" ---------------------------------------

" keymaps
" source 


