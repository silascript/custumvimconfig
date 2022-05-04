" ------------------------
"     vim-lsp 插件配置
" ------------------------

" vim-lsp 插件配置
let s:vimlsp_result = commands_basic#ExistPlug('prabirshrestha/vim-lsp')
if s:vimlsp_result ==? 1
	" 关闭lsp的语法诊断
	let g:lsp_diagnostics_enabled = 0

	" 设置各语言LSP
	" c/c++
	if executable('clangd')
		au User lsp_setup call lsp#register_server({
			\ 'name': 'clangd',
			\ 'cmd': {server_info->['clangd', '-background-index']},
			\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
		\ })
	endif
	
	" ---------------------------------------------------------------

	" python
	" pyls 是 palantir/python-language-server
	" if (executable('pyls'))
		" au User lsp_setup call lsp#register_server({
		" \ 'name': 'pyls',
		" \ 'cmd': {server_info->['pyls']},
		" \ 'allowlist': ['python']
		" \ })
	" endif

	" pylsp 是 python-lsp/python-lsp-server
	" if (executable('pylsp'))
		" au User lsp_setup call lsp#register_server({
		" \ 'name': 'pylsp',
		" \ 'cmd': {server_info->['pylsp']},
		" \ 'allowlist': ['python']
		" \ })
	" endif

	" jedi-language-server 
	if (executable('jedi-language-server'))
		au User lsp_setup call lsp#register_server({
		\ 'name': 'jedi-language-server',
		\ 'cmd': {server_info->['jedi-language-server']},
		\ 'allowlist': ['python']
		\ })
	endif


	" --------------------------------------------------------	

	" rust
	if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'lsp-rls',
        "\ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        "\ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'cmd': {server_info->['rls']},
        "\ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
	endif


	" -----------------------------------------------------------


	" ruby
	if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
	endif


	" -----------------------------------------------------------


	" golang
	if executable('gopls')
		au User lsp_setup call lsp#register_server({
			\ 'name': 'lsp-gopls',
			\ 'cmd': {server_info->['gopls']},
			\ 'whitelist': ['go'],
			\ })
		autocmd BufWritePre *.go LspDocumentFormatSync
	endif



	" -----------------------------------------------------------

	
	" typescript/javascript
	if executable('typescript-language-server')
		au User lsp_setup call lsp#register_server({
		  \ 'name': 'lsp-tsserver',
		  \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
		  \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
		  \ })
	endif
	
	if executable('typescript-language-server')
		au User lsp_setup call lsp#register_server({
			\ 'name': 'lsp-tsserver',
			\ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
			\ 'whitelist': ['typescript', 'typescript.tsx'],
			\ })
	endif
	

	" -----------------------------------------------------------

	" html
	"if executable('html-languageserver')
	  "au User lsp_setup call lsp#register_server({
		"\ 'name': 'html-languageserver',
		"\ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
		"\ 'whitelist': ['html'],
	  "\ })
	"endif

	"if executable('css-languageserver')
    "au User lsp_setup call lsp#register_server({
        "\ 'name': 'css-languageserver',
        "\ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
        "\ 'whitelist': ['css', 'less', 'sass'],
        "\ })
	"endif

	"augroup lsp_install
		"au!
		"" call s:on_lsp_buffer_enabled only for languages that has the server registered.
		"autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
	"augroup END

endif



