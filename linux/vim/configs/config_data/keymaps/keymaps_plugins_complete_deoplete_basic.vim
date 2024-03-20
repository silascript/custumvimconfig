vim9script

# ----------------------------------
#		deoplete 快捷键基础设置
# ----------------------------------


# 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

# ----------------------------------------------------

# deoplete 快捷键配置
var deoplete_kresult = commands_basic.ExistPlug('Shougo/deoplete.nvim')
if deoplete_kresult == 1
	
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"


endif


# ----------------------------------------------------



# ----------------------------------------------------

# 配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif





