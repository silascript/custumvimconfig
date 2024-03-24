vim9script

# -----------------------------------------------------------
#			基础插件增强整合方案
#			使用 Plugpac 插件管理器
# -----------------------------------------------------------

# 命令
# 基本命令
import "~/.vim/configs_new/commands/commands_basic.vim"

# -----------------------------------------------------------

# 插件集
# 使用 plugpac 来管理
# call plug#begin()
plugpac#Begin({
	status_open: 'vertical',
	progress_open: 'vertical',
	verbose: 2,
})

	# 引入基础插件集
	import "~/.vim/configs_new/config_data/plugins/plugins_basic.vim"
	# 引入第三方配色插件集
	import "~/.vim/configs_new/config_data/plugins/plugins_colorschemes.vim"

# call plug#end()
plugpac#End()

# -----------------------------------------------------------

# 配置

# 无插件基础配置
import "~/.vim/configs_new/config_data/settings/settings_noplugins_basic.vim" 

# 基础插件配置
import "~/.vim/configs_new/config_data/settings/settings_plugins_basic.vim"

# 配色插件配置
import "~/.vim/configs_new/config_data/settings/settings_colorschemes.vim"

# -----------------------------------------------------------

# keymaps
# source 


