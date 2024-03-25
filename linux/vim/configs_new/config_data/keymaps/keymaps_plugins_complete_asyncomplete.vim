vim9script

# ----------------------------------
#	asyncomplete 补全框架快捷键设置
# ----------------------------------

# 导入通用脚本
import "~/.vim/configs_new/commands/commands_basic.vim"

# ----------------------------------------------------

# asyncomplete 快捷键配置
var asyncompl_kresult = commands_basic.ExistPlug('prabirshrestha/asyncomplete.vim')
if asyncompl_kresult == 1

	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

	
	# -----------------------------------------------------------------

	# asyncomplete ultisnips 快捷键配置
	var asyncompl_ultisnips_kresult = commands_basic.ExistPlug('prabirshrestha/asyncomplete-ultisnips.vim')
	if asyncompl_ultisnips_kresult == 1
		# 因为 asyncomplete Tab 选择候选项的快捷键与 ultisnips 有冲突
		# 故将 ultisnips 的补全触发快捷键更改		
		g:UltiSnipsExpandTrigger = "<c-e>"
	endif
	

endif


