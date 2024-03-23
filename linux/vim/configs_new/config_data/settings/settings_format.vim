vim9script

# ------------------------
#      格式化插件配置
# ------------------------

# vim9需要导入相关脚本才能调函数
import "~/.vim/configs_new/commands/commands_basic.vim"

# --------------------------------------------

#  插件配置
# var googlecodefmt_result = commands_basic#ExistPlug('google/vim-codefmt')
var googlecodefmt_result = commands_basic.ExistPlug('google/vim-codefmt')
if googlecodefmt_result == 1


	call glaive#Install()


	# 配置 shfmt
	# Glaive codefmt shfmt_options=`['-i', '0', '-sr', '-ci']`

endif

# -------------------------------------------------------------------------

var neoformat_result = commands_basic.ExistPlug('sbdchd/neoformat')
if neoformat_result == 1

	g:neoformat_basic_format_retab = 0

	# 设置
	# Python
	g:neoformat_python_black = {
		'exe': 'black',
		'args': ['-S'],
		'replace': 1
	}
	# g:neoformat_enabled_python = ['black', 'autopep8', 'yapf', 'docformatter']
	g:neoformat_enabled_python = ['black']

	# shell
	g:neoformat_sh_shfmt = {
		'exe': 'shfmt',
		'args': ['-i', '0', '-sr', '-ci'],
	}

	# javascript
	g:neoformat_js_prettier = {
		'exe': 'prettier',
		# 'args': ['--use-tabs true']
		# 'args': ['--tab-width 8']
	}
	g:neoformat_enabled_javascript = ['prettier']

endif

# -------------------------------------------------------------------------

#  插件配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif


# --------------------------------------------

