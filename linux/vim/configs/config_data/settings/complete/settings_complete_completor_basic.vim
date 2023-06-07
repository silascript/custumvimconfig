" -------------------------------
"   completor 插件基础配置
" -------------------------------

"  vim-auto-popmenu 插件配置
let s:completor_result = commands_basic#ExistPlug('')
if s:completor_result ==? 1
	
	" buffer 及ultisnips 最小触发补全字符
	" 默认是2个字符
	let g:completor_min_chars = 1

	" 菜单显示配置
	let g:completor_complete_options = 'menuone,noselect,preview'

	" 补全延迟 默认是80 毫秒
	let g:completor_completion_delay = 50


	" 开启各语言LSP补全
	let g:completor_filetype_map = {}
	" Enable lsp for go by using gopls
	let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls'}
	" Enable lsp for rust by using rls
	let g:completor_filetype_map.rust = {'ft': 'lsp', 'cmd': 'rls'}
	" Enable lsp for c by using clangd
	let g:completor_filetype_map.c = {'ft': 'lsp', 'cmd': 'clangd'}
	" python
	let g:completor_filetype_map.py = {'ft': 'lsp', 'cmd': 'pylsp'}

endif


