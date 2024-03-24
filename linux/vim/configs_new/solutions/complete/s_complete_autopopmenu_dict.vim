vim9script

# ------------------------------------------------------
#	vim-auto-popmenu + 字典 补全插件整合方案
#				使用 Plugpac
# ------------------------------------------------------


# 命令
# 基本命令
import "~/.vim/configs_new/commands/commands_basic.vim"

# ---------------------------------------
# 插件集

plugpac#Begin({
  status_open: 'vertical',
  progress_open: 'vertical',
  verbose: 2,
})

	# 基础插件集
	import "~/.vim/configs_new/config_data/plugins/plugins_basic.vim"

	# 配色插件集
	import "~/.vim/configs_new/config_data/plugins/plugins_colorschemes.vim"


	# 语法高亮插件集
	import "~/.vim/configs_new/config_data/plugins/plugins_syntaxhl.vim"

	# 显示插件集
	# 包括 statusline 文件类型图标 mark标记显示等
	import "~/.vim/configs_new/config_data/plugins/plugins_display.vim"

	# 格式化插件
	import "~/.vim/configs_new/config_data/plugins/plugins_format.vim"

	# snippets 插件 选择其中一个
	# import "~/.vim/configs_new/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim"
	# import "~/.vim/configs_new/config_data/plugins/plug_snippets/plugins_snippets_ultisnips.vim"

	# Git 插件集
	import "~/.vim/configs_new/config_data/plugins/plugins_git.vim"
	

	# vim-auto-popmenu +字典整合插件集
	import "~/.vim/configs_new/config_data/plugins/plug_complete/plugins_complete_autopopmenu_dict.vim"

plugpac#End()


# ---------------------------------------

# 配置

# 无插件基础配置
import "~/.vim/configs_new/config_data/settings/settings_noplugins_basic.vim"

# 基础插件配置
import "~/.vim/configs_new/config_data/settings/settings_plugins_basic.vim"

# 配色插件配置
import "~/.vim/configs_new/config_data/settings/settings_colorschemes.vim"

# statusline 插件配置
import "~/.vim/configs_new/config_data/settings/settings_plugins_statusline.vim"

# 格式化插件配置
import "~/.vim/configs_new/config_data/settings/settings_format.vim"

# snippets 插件配置
# import "~/.vim/configs_new/config_data/settings/settings_plugins_snippets.vim"


# vim-auto-popmenu 框架插件基础配置
# import "~/.vim/configs_new/config_data/settings/complete/settings_complete_autopopmenu_basic.vim"
# vim-auto-popmenu + 字典插件套件配置
import "~/.vim/configs_new/config_data/settings/complete/settings_complete_autopopmenu_dict.vim"



# ---------------------------------------

# keymaps
# source 

# 基础插件 快捷键配置
import "~/.vim/configs_new/config_data/keymaps/keymaps_plugins_basic.vim"

# vim-auto-popmenu 快捷键配置
# import "~/.vim/configs_new/config_data/keymaps/"




