" ---------------------------------------
"    neosnippet + vim-snippets 插件配置
" ---------------------------------------

" neosnippet 配置
let s:neosnippet_result = commands_basic#ExistPlug('Shougo/neosnippet.vim')
if s:neosnippet_result ==? 1
	
	
	
	" 禁止 neosnippet-snippets 仓库
	let g:neosnippet#disable_runtime_snippets = {'_' : 1}
	
	let g:neosnippet#enable_snipmate_compatibility = 1

	" 使用 vim-snippets 作为snippet仓库
	let g:neosnippet#snippets_directory = '~/.vim/plugged/vim-snippets/snippets/'
	
	" 把标记隐藏
	if has('conceal')
	  set conceallevel=2 concealcursor=niv
	endif

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




