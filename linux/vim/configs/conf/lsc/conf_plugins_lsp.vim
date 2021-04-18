
" -------------------------------------
"			vim-lsp 配置
" -------------------------------------

let s:lspresult = commands_basic#ExistPlug('prabirshrestha/vim-lsp')

if s:lspresult ==? 1
	
	" 设置各语言LSP
	if executable('clangd')
		au User lsp_setup call lsp#register_server({
			\ 'name': 'clangd',
			\ 'cmd': {server_info->['clangd', '-background-index']},
			\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
		\ })
	endif
	

	if (executable('pyls'))
		au User lsp_setup call lsp#register_server({
		\ 'name': 'lsp-pyls',
		\ 'cmd': {server_info->['pyls']},
		\ 'allowlist': ['python']
		\ })
	endif


	"augroup lsp_install
		"au!
		"" call s:on_lsp_buffer_enabled only for languages that has the server registered.
		"autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
	"augroup END

endif

