" ------------------------
"     标点符号插件配置
" ------------------------



" --------------------------------------------

"  cosco 插件配置
let s:cosco_result = commands_basic#ExistPlug('lfilho/cosco.vim')
if s:cosco_result ==? 1

	let g:cosco_filetype_whitelist = ['c','cpp','java','php', 'javascript']
	let g:cosco_filetype_blacklist = ['vim', 'bash']

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




