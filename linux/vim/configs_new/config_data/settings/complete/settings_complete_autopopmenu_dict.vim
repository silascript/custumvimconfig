vim9script

# ----------------------------------
#   vim-auto-popmenu + 字典 插件配置
# ----------------------------------

# 导入通用脚本
import "~/.vim/configs_new/commands/commands_basic.vim"


#  vim-auto-popmenu 插件配置
import "~/.vim/configs_new/config_data/settings/complete/settings_complete_autopopmenu_basic.vim"

# 字典配置
# var autopopmenu_dict_result = commands_basic#ExistPlug('skywind3000/vim-dict')
var autopopmenu_dict_result = commands_basic.ExistPlug('skywind3000/vim-dict')
if autopopmenu_dict_result == 1
	
	# 配置字典存储位置
	g:vim_dict_dict = [
        '~/.vim/pack/minpac/start/vim-dict',
    ]

endif


