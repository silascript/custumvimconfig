vim9script

# ------------------------
#   easycomplete 插件配置
# ------------------------

# easycomplete 插件配置
var easyc_result = commands_basic#ExistPlug('jayli/vim-easycomplete')
if easyc_result == 1
	# 样式： 自带四种样式：dark, light, rider, sharp
	g:easycomplete_scheme = "sharp"

endif

