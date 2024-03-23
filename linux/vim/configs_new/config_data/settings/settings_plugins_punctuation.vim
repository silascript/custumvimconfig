vim9script

# ------------------------
#     标点符号插件配置
# ------------------------

import "~/.vim/configs_new/commands/commands_basic.vim"

# --------------------------------------------

#  cosco 插件配置
# var cosco_result = commands_basic#ExistPlug('lfilho/cosco.vim')
var cosco_result = commands_basic.ExistPlug('lfilho/cosco.vim')
if cosco_result == 1

	g:cosco_filetype_whitelist = ['c', 'cpp', 'java', 'php', 'javascript']
	g:cosco_filetype_blacklist = ['vim', 'bash']

endif

# --------------------------------------------

#  插件配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif

# --------------------------------------------




