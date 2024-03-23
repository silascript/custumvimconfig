vim9script

# ------------------------
#      ultisnips 插件配置
# ------------------------

# 导入通用脚本
import "~/.vim/configs_new/commands/commands_basic.vim"

#  ultisnips 插件配置
# var ultisnips_result = commands_basic#ExistPlug('SirVer/ultisnips')
var ultisnips_result = commands_basic.ExistPlug('SirVer/ultisnips')
if ultisnips_result == 1
	# let g:UltiSnipsExpandTrigger="<tab>"
	# let g:UltiSnipsJumpForwardTrigger="<c-b>"
	# let g:UltiSnipsJumpBackwardTrigger="<c-z>"
	# g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = "~/.vim/pack/minpac/start/vim-snippets/snippets"
	g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = "$HOME/.vim/pack/minpac/start/vim-snippets/snippets"
	# g:UltiSnipsSnippetDirectories = "~/.vim/pack/minpac/start/vim-snippets/snippets"
	# g:UltiSnipsSnippetDirectories = "$HOME/.vim/pack/minpac/start/vim-snippets/snippets"
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




