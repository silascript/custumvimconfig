vim9script

# ------------------------
#      snipmate 插件配置
# ------------------------

# 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

#  snipmate 插件配置
# var snipmate_result = commands_basic#ExistPlug('garbas/vim-snipmate')
var snipmate_result = commands_basic.ExistPlug('garbas/vim-snipmate')
if snipmate_result == 1
	g:snipMate = {'snippet_version': 1}
endif


# --------------------------------------------


# --------------------------------------------

#  插件配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif

# --------------------------------------------




