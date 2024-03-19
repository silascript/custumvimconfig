" ----------------------------------
"		completor 快捷键基础设置
" ----------------------------------

" 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

" completor 快捷键配置
" let s:completor_kresult = commands_basic#ExistPlug('maralla/completor.vim')
let s:completor_kresult = s:commands_basic.ExistPlug('maralla/completor.vim')
if s:completor_kresult ==? 1

	" 使用 Tab键补全
	" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"


	" let g:completor_auto_trigger = 0
	" inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"



	"--------------------------------------------- 


	" Use TAB to complete when typing words, else inserts TABs as usual.  Uses
	" dictionary, source files, and completor to find matching words to complete.

	" Note: usual completion is on <C-n> but more trouble to press all the time.
	" Never type the same word twice and maybe learn a new spellings!
	" Use the Linux dictionary when spelling is in doubt.
	function! Tab_Or_Complete() abort
	  " If completor is already open the `tab` cycles through suggested completions.
	  if pumvisible()
		return "\<C-N>"
	  " If completor is not open and we are in the middle of typing a word then
	  " `tab` opens completor menu.
	  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^[[:keyword:][:ident:]]'
		return "\<C-R>=completor#do('complete')\<CR>"
		" return "\<C-R>=completor#do('complete')"
	  else
		" If we aren't typing a word and we press `tab` simply do the normal `tab`
		" action.
		return "\<Tab>"
	  endif
	endfunction

	" Use `tab` key to select completions.  Default is arrow keys.
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	" Use tab to trigger auto completion.  Default suggests completions as you type.
	" let g:completor_auto_trigger = 0
	inoremap <expr> <Tab> Tab_Or_Complete()
	
	" 回车确定
	inoremap <expr> <cr> pumvisible()? "\<c-y>" : "\<cr>"



endif


" ----------------------------------------------------

" 配置


" ----------------------------------------------------

" 配置
" let s:xxxresult = commands_basic#ExistPlug('插件名')
" if s:xxxresult ==? 1
" 
  " ...
" 
" endif





