vim9script

# ----------------------------------
#		completor 快捷键设置
# ----------------------------------

# 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

# completor 快捷键配置
var completor_kresult = commands_basic.ExistPlug('maralla/completor.vim')
if completor_kresult == 1

	# 使用 Tab键补全
	# inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	# inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	# inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"


	# let g:completor_auto_trigger = 0
	# inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"


	# --------------------------------------------- 


	# Use TAB to complete when typing words, else inserts TABs as usual.  Uses
	# dictionary, source files, and completor to find matching words to complete.

	# Note: usual completion is on <C-n> but more trouble to press all the time.
	# Never type the same word twice and maybe learn a new spellings!
	# Use the Linux dictionary when spelling is in doubt.
	function Tab_Or_Complete() abort
	  if pumvisible()
		return "\<C-N>"
	  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^[[:keyword:][:ident:]]'
		return "\<C-R>=completor#do('complete')\<CR>"
	  else
		return "\<Tab>"
	  endif
	endfunction

	# Use `tab` key to select completions.  Default is arrow keys.
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	# Use tab to trigger auto completion.  Default suggests completions as you type.
	# let g:completor_auto_trigger = 0
	inoremap <expr> <Tab> Tab_Or_Complete()
	
	# 回车确定
	inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<cr>"



	# ultisnips 快捷键配置
	var deoplete_ultisnips_result = commands_basic.ExistPlug('SirVer/ultisnips')
	if deoplete_ultisnips_result == 1


		# 将 ultisnips 展开代码的快捷键设成其他，这样避免与 completor 默认的 Tab 选择候选项快捷键冲突
		g:UltiSnipsExpandTrigger		= "<c-e>"
		g:UltiSnipsJumpForwardTrigger	= "<c-j>"
		g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
		g:UltiSnipsRemoveSelectModeMappings = 0

	endif



endif


# ----------------------------------------------------

# 配置


# ----------------------------------------------------

# 配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif





