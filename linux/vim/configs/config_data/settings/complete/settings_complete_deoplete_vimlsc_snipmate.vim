vim9script

# -----------------------------------------
#   deoplete vim-lsc snipmate 插件整合配置
# -----------------------------------------

# 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

#  deoplete 插件基础配置
import "~/.vim/configs/config_data/settings/complete/settings_complete_deoplete_basic.vim"

# vim-lsc 配置
import "~/.vim/configs/config_data/settings/lsc/settings_lsc_vimlsc.vim"

# snipmate 配置

# snipmate 插件配置
import "~/.vim/configs/config_data/settings/settings_plugins_snippets.vim"

# deoplete-snipmate 插件配置
var deosnipmate_result = commands_basic.ExistPlug('dcampos/deoplete-snipmate')
if deosnipmate_result ==? 1
	# 解决 deoplete 与 snipmate 整合时 expand 问题
	augroup vimrc
		autocmd!
		autocmd vimrc CompleteDone * call deoplete#snipmate#try_expand()
	augroup END
endif

