" ----------------------------------
"			ncm2 补全框架快捷键设置
" ----------------------------------


" ----------------------------------------------------

" ncm2 快捷键配置
let s:ncm2_kresult = commands_basic#ExistPlug('ncm2/ncm2')
if s:ncm2_kresult ==? 1

	" 使用tab键来切换候选项
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	inoremap <expr> <cr> pumvisible() ? "\<C-y>":"\<cr>"


	" --------------------------------------------

	" ncm2 与 snipmate 整合配置
	let s:ncm2_snipmate_result = commands_basic#ExistPlug('ncm2/ncm2-snipmate')
	if s:ncm2_snipmate_result ==? 1
		
		inoremap <silent> <expr> <CR> ncm2_snipmate#expand_or("\<CR>", 'n')

		" wrap <Plug>snipMateTrigger so that it works for both completin and normal
		" snippet
		" inoremap <expr> <c-u> ncm2_snipmate#expand_or("\<Plug>snipMateTrigger", "m")

		" c-j c-k for moving in snippet
		let g:snips_no_mappings = 1
		vmap <c-j> <Plug>snipMateNextOrTrigger
		vmap <c-k> <Plug>snipMateBack
		imap <expr> <c-k> pumvisible() ? "\<c-y>\<Plug>snipMateBack" : "\<Plug>snipMateBack"
		imap <expr> <c-j> pumvisible() ? "\<c-y>\<Plug>snipMateNextOrTrigger" : "\<Plug>snipMateNextOrTrigger"

	endif


	" ncm2 与 ultisnips 整合配置
	let s:ncm2_ultisnips_result = commands_basic#ExistPlug('ncm2/ncm2-ultisnips')
	if s:ncm2_ultisnips_result ==? 1

		" Press enter key to trigger snippet expansion
		" The parameters are the same as `:help feedkeys()`
		inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

		" c-j c-k for moving in snippet
		" let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
		let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
		let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
		let g:UltiSnipsRemoveSelectModeMappings = 0

	endif



endif


