" -------------------------------
"   completor 插件基础配置
" -------------------------------

"  completor 插件配置
let s:completor_result = commands_basic#ExistPlug('maralla/completor.vim')
if s:completor_result ==? 1
	
	" buffer 及ultisnips 最小触发补全字符
	" 默认是2个字符
	let g:completor_min_chars = 1

	" 菜单显示配置
	let g:completor_complete_options = 'menuone,noselect,preview'

	" 补全延迟 默认是80 毫秒
	let g:completor_completion_delay = 50
	

	" 开启关闭自动提示
	" 0:关闭 1:开启
	let g:completor_auto_trigger = 1

	" -------------------------------------------------

	" 配置 clang	
	let g:completor_clang_binary = '/usr/bin/clang'

	" 指定 python
	let g:completor_python_binary = '/usr/bin/python3.10'
	" let pythonthreehome = '/usr/lib/python3'


	" ------------------------------------------------

	" 开启各语言LSP补全
	let g:completor_filetype_map = {}
	" Enable lsp for go by using gopls
	" let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls'}
	" Enable lsp for rust by using rls
	" let g:completor_filetype_map.rust = {'ft': 'lsp', 'cmd': 'rls'}
	" Enable lsp for c by using clangd
	" let g:completor_filetype_map.c = {'ft': 'lsp', 'cmd': 'clangd'}
	" let g:completor_filetype_map.c = {'ft': 'lsp', 'cmd': 'clangd-14'}

	" python
	let g:completor_filetype_map.python = {'ft': 'lsp', 'cmd': 'pylsp'}
	" let g:completor_filetype_map.python = {'ft': 'lsp', 'cmd': 'jedi'}
	" let g:completor_filetype_map.python = {'ft': 'lsp', 'cmd': 'pyls'}

endif


