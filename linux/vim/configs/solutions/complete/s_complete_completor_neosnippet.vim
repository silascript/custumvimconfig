vim9script

# ----------------------------------------
#	completor neosnippet 补全插件整合方案
# ----------------------------------------


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

	# snippets 插件 选择其中一个
	# import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim"
	# import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_ultisnips.vim"

	# Git 插件集
	import "~/.vim/configs/config_data/plugins/plugins_git.vim"

	# completor 补全框架插件集
	# completor neosnippet 插件整合集
	# neosnippet 默认使用自己的 neosnippet-snippets 作为snippets仓库
	import "~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_completor_neosnippet_vimsnippets.vim"
	# import "~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_completor_neosnippet.vim"



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
# import "~/.vim/configs/config_data/settings/settings_plugins_statusline.vim"
source ~/.vim/configs/config_data/settings/settings_plugins_statusline.vim


# 格式化插件配置
import "~/.vim/configs/config_data/settings/settings_format.vim"



# completor neosnipet 插件整合配置
import "~/.vim/configs/config_data/settings/complete/settings_complete_completor_neosnippet.vim"

# snippets 插件配置
# neosnippet 配置
# import "~/.vim/configs/config_data/settings/snippet/settings_plugins_snippets_neosnippet.vim"



# ---------------------------------------

# keymaps
# source 

# 基础插件 快捷键配置
import "~/.vim/configs/config_data/keymaps/keymaps_plugins_basic.vim"

#  快捷键配置
# completor 快捷键配置
# import "~/.vim/configs/config_data/keymaps/keymaps_plugins_complete_completor.vim"
import "~/.vim/configs/config_data/keymaps/keymaps_plugins_complete_completor_neosnippet.vim"




