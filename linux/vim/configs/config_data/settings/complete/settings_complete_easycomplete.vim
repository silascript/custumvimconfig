vim9script

# ------------------------
#   easycomplete 插件配置
# ------------------------

# easycomplete 插件配置
var easyc_result = commands_basic#ExistPlug('jayli/vim-easycomplete')
if easyc_result == 1
	# 样式： 自带四种样式：dark, light, rider, sharp
	g:easycomplete_scheme = "sharp"

	# 使用nerd字体
	g:easycomplete_nerd_font = 1

	g:easycomplete_cursor_word_hl = 1

endif

