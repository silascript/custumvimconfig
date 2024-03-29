vim9script

# ------------------------
#   easycomplete 插件配置
# ------------------------

import "~/.vim/configs_new/commands/commands_basic.vim"

# easycomplete 插件配置
var easyc_result = commands_basic.ExistPlug('jayli/vim-easycomplete')
if easyc_result == 1
	# 样式： 自带四种样式：dark, light, rider, sharp
	g:easycomplete_scheme = "sharp"

	# 使用nerd字体
	g:easycomplete_nerd_font = 1

	g:easycomplete_cursor_word_hl = 1

	# 关闭检查
	g:easycomplete_diagnostics_enable = 0
	g:easycomplete_lsp_checking = 0

endif

