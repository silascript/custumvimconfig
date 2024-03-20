vim9script

# -----------------------------------------
#   deoplete + deoplete-clangx 插件套件配置
# -----------------------------------------

# 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

#  deoplete 插件基础配置
import "~/.vim/configs/config_data/settings/complete/settings_complete_deoplete_basic.vim"

# deoplete-clangx 配置

var deoplete_clangx_result = commands_basic.ExistPlug('Shougo/deoplete-clangx')
if deoplete_clangx_result == 1

	# Change clang binary path
	call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')

	# Change clang options
	call deoplete#custom#var('clangx', 'default_c_options', '')
	call deoplete#custom#var('clangx', 'default_cpp_options', '')

endif




