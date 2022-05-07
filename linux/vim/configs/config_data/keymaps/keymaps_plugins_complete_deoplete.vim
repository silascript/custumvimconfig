" ----------------------------------
"		deoplete 快捷键设置
" ----------------------------------


" ----------------------------------------------------

" deoplete 快捷键配置
let s:deoplete_kresult = commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplete_kresult ==? 1
	
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"




	" snipmate 快捷键配置
	let s:deoplete_snipmate_result = commands_basic#ExistPlug('garbas/vim-snipmate')
	if s:deoplete_snipmate_result ==? 1
		imap <C-E> <Plug>snipMateTrigger 
	endif

	" ultisnips 快捷键配置
	let s:deoplete_ultisnips_result = commands_basic#ExistPlug('SirVer/ultisnips')
	if s:deoplete_ultisnips_result ==? 1


		" 将 ultisnips 展开代码的快捷键设成其他，这样避免与 deoplete 默认的 Tab 选择候选项快捷键冲突
		let g:UltiSnipsExpandTrigger		= "<c-e>"
		let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
		let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
		let g:UltiSnipsRemoveSelectModeMappings = 0

	endif


endif


" ----------------------------------------------------


" 配置
let s:neosnippet_result = commands_basic#ExistPlug('Shougo/neosnippet.vim')
if s:neosnippet_result ==? 1

	imap <expr><TAB>
	\ pumvisible() ? "\<C-n>" :
	\ neosnippet#expandable_or_jumpable() ?
	\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
	smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"



endif


" ----------------------------------------------------

" 配置
" let s:xxxresult = commands_basic#ExistPlug('插件名')
" if s:xxxresult ==? 1
" 
  " ...
" 
" endif





