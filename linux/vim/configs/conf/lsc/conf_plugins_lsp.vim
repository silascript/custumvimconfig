
" -------------------------------------
"			vim-lsp 配置
" -------------------------------------

let s:lspresult = commands_basic#ExistPlug('prabirshrestha/vim-lsp')

if s:lspresult ==? 1
	
	" 关闭lsp的语法诊断
	let g:lsp_diagnostics_enabled = 0

	" 设置各语言LSP
	" c/c++
	if executable('clangd')
		au User lsp_setup call lsp#register_server({
			\ 'name': 'lsp-clangd',
			\ 'cmd': {server_info->['clangd', '-background-index']},
			\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
		\ })
	endif
	
	" python
	if (executable('pyls'))
		au User lsp_setup call lsp#register_server({
		\ 'name': 'lsp-pyls',
		\ 'cmd': {server_info->['pyls']},
		\ 'allowlist': ['python']
		\ })
	endif
	
	" rust
	if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'lsp-rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        "\ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
	endif

	" ruby
	if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'lsp-solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
	endif

	" golang
	if executable('gopls')
		au User lsp_setup call lsp#register_server({
			\ 'name': 'lsp-gopls',
			\ 'cmd': {server_info->['gopls']},
			\ 'whitelist': ['go'],
			\ })
		autocmd BufWritePre *.go LspDocumentFormatSync
	endif


	"augroup lsp_install
		"au!
		"" call s:on_lsp_buffer_enabled only for languages that has the server registered.
		"autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
	"augroup END

endif

