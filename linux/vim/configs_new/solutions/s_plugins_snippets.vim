vim9script

# ------------------------------------
#	 整全了 snippets 插件的整合方案
#			使用 Plugpac 
# ------------------------------------

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
	
	# snippet 插件集 选择一个
	# snipmate
	import "~/.vim/configs_new/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim"
	# ultisnips
	# import "~/.vim/configs_new/config_data/plugins/plug_snippets/plugins_snippets_ultisnips.vim"
	# neosnippet
	# import "~/.vim/configs_new/config_data/plugins/plug_snippets/plugins_snippets_neosnippet.vim"
	

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


# snippets 插件配置
# settings_plugins_snippets 这个配置文件包括了snipmate ultisnips 及neosnippet 三个snippets 引擎配置
import "~/.vim/configs_new/config_data/settings/settings_plugins_snippets.vim"

# ---------------------------------------

# keymaps


