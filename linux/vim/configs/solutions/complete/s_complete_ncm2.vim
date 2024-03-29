" -----------------------------
"	 ncm2 补全插件整合方案
" -----------------------------

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

	" 格式化插件
	source ~/.vim/configs/config_data/plugins/plugins_format.vim

	" snippets 插件 选择其中一个
	" source ~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim
	" source ~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_ultisnips.vim

	" Git 插件集
	source ~/.vim/configs/config_data/plugins/plugins_git.vim

	" ncm2 补全框架插件集
	" ncm2 默认整合插件集
	" source ~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_ncm2_basic.vim
	" ncm2 与 snipmate 整合插件集
	" source ~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_ncm2_snipmate.vim
	" ncm2 与 ultisnips 整合插件集
	" source ~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_ncm2_ultisnips.vim


	" ncm2 vim-lsp snipmate 整合插件集
	source ~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_ncm2_lsp_snipmate.vim

	" ncm2 vim-lsp ultisnips 整合插件集
	" source ~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_ncm2_lsp_ultisnips.vim


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


" 格式化插件配置
source ~/.vim/configs/config_data/settings/settings_format.vim

" snippets 插件配置
source ~/.vim/configs/config_data/settings/settings_plugins_snippets.vim


" ncm2 框架插件配置
source ~/.vim/configs/config_data/settings/complete/settings_complete_ncm_basic.vim


" ---------------------------------------

" keymaps
" source 

" 基础插件 快捷键配置
source ~/.vim/configs/config_data/keymaps/keymaps_plugins_basic.vim


" ncm2 补全框架插件快捷键配置
source ~/.vim/configs/config_data/keymaps/keymaps_plugins_complete_ncm2.vim

