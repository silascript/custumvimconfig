vim9script

# ------------------------
#   deoplete 插件基础配置
# ------------------------

#  deoplete 插件配置
var deoplete_result = commands_basic#ExistPlug('Shougo/deoplete.nvim')
if deoplete_result == 1
	# 启用 deoplete	
	g:deoplete#enable_at_startup = 1
	
	g:auto_complete_delay = 10
	
	# 设置显示菜单
	set completeopt=menu,menuone,noselect

	# 智能大小写
	call deoplete#custom#source('_', 'smart_case', v:true)
endif


