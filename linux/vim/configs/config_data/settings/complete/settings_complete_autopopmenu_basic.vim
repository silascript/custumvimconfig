vim9script

# -------------------------------
#   vim-auto-popmenu 插件基础配置
# -------------------------------

# vim9脚本需要导入才能调函数
import "~/.vim/configs/commands/commands_basic.vim"

#  vim-auto-popmenu 插件配置
# var autopopmenu_result = commands_basic#ExistPlug('skywind3000/vim-auto-popmenu')
var autopopmenu_result = commands_basic.ExistPlug('skywind3000/vim-auto-popmenu')
if autopopmenu_result ==? 1
	# 启用 	vim-auto-popmenu
	# 默认开启 禁用设为0
	# let g:apc_enable=1

	# 设置要开启补全的文件类型
	g:apc_enable_ft = { 'text': 1, 'markdown': 1, 'sh': 1, 'vim': 1, 'php': 1, 'c': 1, 'cpp': 1, 'java': 1, 'python': 1, 'go': 1, 'javascript': 1, 'ruby': 1, 'rust': 1, 'lua': 1, 'html': 1, 'css': 1, 'less': 1, 'perl': 1, 'snippet': 1, 'zsh': 1 }

	# 最小触发字符字数
	g:apc_min_length = 1

	# 补全源
	set cpt=.,k,w,b

	# 禁止自动选中第一个选项。
	set completeopt=menu,menuone,noselect

	# 1: 回车确认不换行 0: 回车确认换行
	g:apc_cr_confirm = 1
	
	# 禁止在下方显示一些啰嗦的提示
	set shortmess+=c

endif


