vim9script

# --------------------------------------------
#   neosnippet + neosnippet-snippets 插件配置
# --------------------------------------------

import "~/.vim/configs/commands/commands_basic.vim"

# neosnippet 配置
# var neosnippet_result = commands_basic#ExistPlug('Shougo/neosnippet.vim')
var neosnippet_result = commands_basic.ExistPlug('Shougo/neosnippet.vim')
if neosnippet_result == 1
	
	# 使用 neosnippet-snippets 作为snippet仓库
	g:neosnippet#snippets_directory = '~/.vim/plugged/neosnippet-snippets/neosnippets'

	# 把标记隐藏
	if has('conceal')
	  set conceallevel=2 concealcursor=niv
	endif

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




