" ------------------------
"      snippets 插件配置
" ------------------------

"  snipmate 插件配置
let s:snipmate_result = commands_basic#ExistPlug('garbas/vim-snipmate')
if s:snipmate_result ==? 1
	let g:snipMate = {'snippet_version' : 1}
endif


" --------------------------------------------

"  ultisnips 插件配置
let s:ultisnips_result = commands_basic#ExistPlug('SirVer/ultisnips')
if s:ultisnips_result ==? 1
	" let g:UltiSnipsExpandTrigger="<tab>"
	" let g:UltiSnipsJumpForwardTrigger="<c-b>"
	" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
endif


" --------------------------------------------

"  插件配置
" let s:xxxresult = commands_basic#ExistPlug('插件名')
" if s:xxxresult ==? 1
" 
  " ...
" 
" endif

" --------------------------------------------




