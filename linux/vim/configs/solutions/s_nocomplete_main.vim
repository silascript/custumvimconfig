vim9script

# -----------------------------------
#	没有补全但有snippets插件整合方案
# -----------------------------------

# 命令
# 基本命令
import "~/.vim/configs/commands/commands_basic.vim"

# ---------------------------------------
# 插件集

call plug#begin()

	# 基础插件集
	import "~/.vim/configs/config_data/plugins/plugins_basic.vim"

	# 配色插件集
	import "~/.vim/configs/config_data/plugins/plugins_colorschemes.vim"

	# 语法高亮插件集
	import "~/.vim/configs/config_data/plugins/plugins_syntaxhl.vim"

	# 显示插件集
	# 包括 statusline 文件类型图标 mark标记显示等
	import "~/.vim/configs/config_data/plugins/plugins_display.vim"

	# 格式化插件
	import "~/.vim/configs/config_data/plugins/plugins_format.vim"

	# snippets 插件 任选一个
	# snipmate
	# import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim"
	# ultisnips
	import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_ultisnips.vim"
	
	# neosnippet
	# 使用 neosnippet-snippets为仓库的neosnippet
	# import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_neosnippet.vim"
	# 使用 vim-snippets 为仓库的 neosnippet
	# import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_neosnippet_vimsnippets.vim"


	# Git 插件集
	import "~/.vim/configs/config_data/plugins/plugins_git.vim"


call plug#end()

# ---------------------------------------

# 配置

# 无插件基础配置
import "~/.vim/configs/config_data/settings/settings_noplugins_basic.vim"

# 基础插件配置
import "~/.vim/configs/config_data/settings/settings_plugins_basic.vim"

# 配色插件配置
import "~/.vim/configs/config_data/settings/settings_colorschemes.vim"

# statusline 插件配置
import "~/.vim/configs/config_data/settings/settings_plugins_statusline.vim"


# 格式化插件配置
import "~/.vim/configs/config_data/settings/settings_format.vim"

# snippets 插件配置
import "~/.vim/configs/config_data/settings/settings_plugins_snippets.vim"


# ---------------------------------------

# keymaps
# source 

# 基础插件 快捷键配置
import "~/.vim/configs/config_data/keymaps/keymaps_plugins_basic.vim"





