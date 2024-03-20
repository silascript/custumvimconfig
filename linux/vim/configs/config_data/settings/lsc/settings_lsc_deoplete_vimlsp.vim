" ---------------------------------------------------------------------
"   deoplete-vim-lsp 插件配置
"	deoplete-vim-lsp 是作为 deoplete补全框架使用vim-lsp数据源的整合插件
" ---------------------------------------------------------------------

" 导入通用脚本
import "~/.vim/configs/commands/commands_basic.vim"

" vim-lsp 插件配置
" let s:vimlsp_result = commands_basic#ExistPlug('prabirshrestha/vim-lsp')
let s:vimlsp_result = s:commands_basic.ExistPlug('prabirshrestha/vim-lsp')
	if s:vimlsp_result ==? 1
		" 关闭lsp的语法诊断
		let g:lsp_diagnostics_enabled = 0
		
		" 开启log
		" let g:lsp_log_verbose = 1
		" let g:lsp_log_file = expand('~/vim-lsp.log')

		" let s:deo_vimlsp_result = commands_basic#ExistPlug('lighttiger2505/deoplete-vim-lsp')
		let s:deo_vimlsp_result = s:commands_basic.ExistPlug('lighttiger2505/deoplete-vim-lsp')
		if s:deo_vimlsp_result ==? 1
	
			" 设置各语言LSP
			" c/c++
			if executable('clangd')
				augroup LspC
					autocmd!
					au User lsp_setup call lsp#register_server({
						\ 'name': 'clangd',
						\ 'cmd': {server_info->['clangd', '-background-index']},
						\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
					\ })
				augroup END
			endif
		
		" ---------------------------------------------------------------

			" python
			" pyls 是 palantir/python-language-server
			" 2.7~3.5+
			" if executable('pyls')
				" augroup LspPython
					" autocmd!
					" au User lsp_setup call lsp#register_server({
						" \ 'name': 'pyls',
						" \ 'cmd': {server_info->['pyls']},
						" \ 'whitelist': ['python']
						" \ })
				" augroup END
			" endif

			" if executable('pyls')
				" " let allowlists:pyls_path = fnamemodify(g:python_host_prog, ':h') . '/'. 'pyls'
				" let s:pyls_path = '~/.local/bin/'.'pyls'
				" " echo s:pyls_path
				" augroup LspPython
					" autocmd!
					" au User lsp_setup call lsp#register_server({
								" \ 'name': 'pyls',
								" \ 'cmd': {server_info->['pyls']},
								" \ 'whitelist': ['python'],
								" \ })
				" augroup END
			" endif

			" pylsp
			" if executable('pylsp')
				" augroup LspPython2
					" autocmd!
					" au User lsp_setup call lsp#register_server({
								" \ 'name': 'pylsp',
								" \ 'cmd': {server_info->['pylsp']},
								" \ 'whitelist': ['python'],
								" \ })
				" augroup END
			" endif

			" jedi-language-server 
			if executable('jedi-language-server')
				augroup LspPython3
					autocmd!
					au User lsp_setup call lsp#register_server({
								\ 'name': 'jedi-language-server',
								\ 'cmd': {server_info->['jedi-language-server']},
								\ 'whitelist': ['python'],
								\ })
				augroup END
			endif

		" --------------------------------------------------------	

			" rust
			" rust-analyzer
			" if executable('rustup')
			" au User lsp_setup call lsp#register_server({
				" \ 'name': 'rust-analyzer',
				" \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rus-analyzer']},
				" \ 'whitelist': ['rust'],
				" \ })
			" endif

			if executable('rustup')
				augroup LspRust
					autocmd!
					au User lsp_setup call lsp#register_server({
						\ 'name': 'rust-analyzer',
						\ 'cmd': {server_info->['rustup', 'run', 'stable', 'rust-analyzer']},
						\ 'allowlist': ['rust'],
						\ })
				augroup END
			endif

		" -----------------------------------------------------------

			" ruby
			if executable('solargraph')
				augroup LspRuby
					autocmd!
				" gem install solargraph
					au User lsp_setup call lsp#register_server({
						\ 'name': 'solargraph',
						\ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
						\ 'initialization_options': {"diagnostics": "true"},
						\ 'whitelist': ['ruby'],
						\ })
				augroup END
			endif


		" -----------------------------------------------------------

			" golang
			if executable('gopls')
				augroup LspGo
					autocmd!
					au User lsp_setup call lsp#register_server({
						\ 'name': 'lsp-gopls',
						\ 'cmd': {server_info->['gopls']},
						\ 'whitelist': ['go'],
						\ })
					autocmd BufWritePre *.go LspDocumentFormatSync
				augroup END
			endif



		" -----------------------------------------------------------

			" typescript/javascript
			if executable('typescript-language-server')
				augroup LspTS
					autocmd!
					au User lsp_setup call lsp#register_server({
					  \ 'name': 'lsp-tsserver',
					  \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
					  \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
					  \ })
				augroup END
			endif
		
		
		" -----------------------------------------------------------
		
			" markdown
			" 使用 marksman为lsp
			if executable('marksman')
				augroup LspMarkdown
					autocmd!
					au User lsp_setup call lsp#register_server({
						\ 'name': 'marksman',
						\ 'cmd': {server_info->[&shell,&shellcmdflag,'marksman server']},
						\ 'whitelist': ['markdown'],
						\ })
				augroup END
			endif


		" -----------------------------------------------------------
			if executable('bash-language-server')
				augroup LspBash
					autocmd!
					au User lsp_setup call lsp#register_server({
					\ 'name': 'bash-language-server',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
					\ 'whitelist': ['sh'],
					\ })
				augroup END
			endif

		" -----------------------------------------------------------

		if executable('vim-language-server')
		  augroup LspVim
			autocmd!
			autocmd User lsp_setup call lsp#register_server({
				\ 'name': 'vim-language-server',
				\ 'cmd': {server_info->['vim-language-server', '--stdio']},
				\ 'whitelist': ['vim'],
				\ 'initialization_options': {
				\   'vimruntime': $VIMRUNTIME,
				\   'runtimepath': &rtp,
				\ }})
		  augroup END
		endif

		" -----------------------------------------------------------

		if executable('yaml-language-server')
		  augroup LspYaml
			autocmd!
			autocmd User lsp_setup call lsp#register_server({
			   \ 'name': 'yaml-language-server',
			   \ 'cmd': {server_info->['yaml-language-server', '--stdio']},
			   \ 'allowlist': ['yaml', 'yaml.ansible'],
			   \ 'workspace_config': {
			   \   'yaml': {
			   \     'validate': v:true,
			   \     'hover': v:true,
			   \     'completion': v:true,
			   \     'customTags': [],
			   \     'schemas': {},
			   \     'schemaStore': { 'enable': v:true },
			   \   }
			   \ }
			   \})
		  augroup END
		endif


		" -----------------------------------------------------------

		" html
		" if executable('html-languageserver')
			" augroup LspHTML
				" autocmd!
				" au User lsp_setup call lsp#register_server({
							  " \ 'name': 'html-languageserver',
							  " \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
							  " \ 'allowlist': ['html'],
							  " \ })
			" augroup END
		" endif

		if executable('vscode-html-language-server')
			augroup LspHTML
				autocmd!
				au User lsp_setup call lsp#register_server({
							  \ 'name': 'vscode-html-language-server',
							  \ 'cmd': {server_info->[&shell, &shellcmdflag, 'vscode-html-language-server --stdio']},
							  \ 'whitelist': ['html'],
							  \ })
			augroup END
		endif

		" -----------------------------------------------------------

		" css
		if executable('css-languageserver')
			augroup LspCSS
				au User lsp_setup call lsp#register_server({
					\ 'name': 'css-languageserver',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
					\ 'whitelist': ['css', 'less', 'sass'],
					\ })
			augroup END
		endif

		"augroup lsp_install
			"au!
			"" call s:on_lsp_buffer_enabled only for languages that has the server registered.
			"autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
		"augroup END
	endif
endif




