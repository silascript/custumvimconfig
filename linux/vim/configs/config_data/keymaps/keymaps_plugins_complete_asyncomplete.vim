" ----------------------------------
"	asyncomplete 补全框架快捷键设置
" ----------------------------------


" ----------------------------------------------------

" asyncomplete 快捷键配置
let s:asyncompl_kresult = commands_basic#ExistPlug('prabirshrestha/asyncomplete.vim')
if s:asyncompl_kresult ==? 1

	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

	
	" -----------------------------------------------------------------

	" asyncomplete ultisnips 快捷键配置
	let s:asyncompl_ultisnips_kresult = commands_basic#ExistPlug('prabirshrestha/asyncomplete-ultisnips.vim')
	if s:asyncompl_ultisnips_kresult ==? 1
		" 因为 asyncomplete Tab 选择候选项的快捷键与 ultisnips 有冲突
		" 故将 ultisnips 的补全触发快捷键更改		
		let g:UltiSnipsExpandTrigger="<c-e>"
	endif
	



endif


