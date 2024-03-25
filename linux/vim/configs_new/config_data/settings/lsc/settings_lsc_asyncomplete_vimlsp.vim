" ---------------------------------------------------------------------
"				asyncomplete 与 vim-lsp 整合 vim-lsp配置
"				这个配置主要是为asyncomplete配补全数据源
" ---------------------------------------------------------------------

" 导入通用脚本
import "~/.vim/configs_new/commands/commands_basic.vim"

" ---------------------------------------------------------------------

" vim-lsp 插件配置
let s:vimlsp_result = s:commands_basic.ExistPlug('prabirshrestha/vim-lsp')
if s:vimlsp_result == 1
	" 关闭lsp的语法诊断
	let g:lsp_diagnostics_enabled = 0

	" 判断asyncomplete 与 vim-lsp 的桥接器 asyncomplete-lsp 插件有没有安装
	let s:async_vimlsp_result = s:commands_basic.ExistPlug('prabirshrestha/asyncomplete-lsp.vim')

	" ----------------------------注册补全源------------------------------ "
	if s:async_vimlsp_result == 1

		" c/c++
		if executable('clangd')
			augroup LspClang
				autocmd!
				au User lsp_setup call lsp#register_server({
					\ 'name': 'clangd',
					\ 'cmd': {server_info->['clangd', '-background-index']},
					\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
					\ })
			augroup END
		endif
		
		" ---------------------------------------------------------- "

		" python
		if executable('jedi-language-server')
			augroup LspPython
				autocmd!
				au User lsp_setup call lsp#register_server({
					\ 'name': 'jedi-language-server',
					\ 'cmd': {server_info->['jedi-language-server']},
					\ 'allowlist': ['python'],
					\ })
			augroup END
		endif	

		" ---------------------------------------------------------- "

		" go
		if executable('gopls')
			augroup LspGo
				autocmd!
				au User lsp_setup call lsp#register_server({
				\ 'name': 'gopls',
				\ 'cmd': {server_info->['gopls', '-remote=auto']},
				\ 'allowlist': ['go', 'gomod', 'gohtmltmpl', 'gotexttmpl'],
				\ })
				autocmd BufWritePre *.go
				\ call execute('LspDocumentFormatSync') |
				\ call execute('LspCodeActionSync source.organizeImports')
			augroup END
		endif

		" ---------------------------------------------------------- "

		" rust
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
		
		" ---------------------------------------------------------- "

		" javascript
		if executable('typescript-language-server')
			augroup LspTypescript
				autocmd!
				  au User lsp_setup call lsp#register_server({
			\ 'name': 'javascript support using typescript-language-server',
			\ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
			\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
			\ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact'],
			\ })
			augroup END
		endif

		" ---------------------------------------------------------- "

		" html
		" if executable('html-languageserver')
		  " au User lsp_setup call lsp#register_server({
			" \ 'name': 'html-languageserver',
			" \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
			" \ 'whitelist': ['html'],
		  " \ })
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

		" ---------------------------------------------------------- "

		" css
		if executable('css-languageserver')
			augroup LspCSS
				autocmd!
				au User lsp_setup call lsp#register_server({
					\ 'name': 'css-languageserver',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
					\ 'whitelist': ['css', 'less', 'sass'],
					\ })
			augroup END
		endif

		" ---------------------------------------------------------- "

		" typescript
		if executable('typescript-language-server')
			augroup LspTS
				autocmd!
				au User lsp_setup call lsp#register_server({
					\ 'name': 'typescript-language-server',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
					\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
					\ 'whitelist': ['typescript', 'typescript.tsx', 'typescriptreact'],
					\ })
			augroup END
		endif	

		" ---------------------------------------------------------- "
		
		" lua
		" if executable('lua-lsp')
			" au User lsp_setup call lsp#register_server({
						" \ 'name': 'lua-lsp',
						" \ 'cmd': {server_info->[&shell, &shellcmdflag, 'lua-lsp']},
						" \ 'whitelist': ['lua'],
						" \ })
		" endif
			
		if executable('lua-language-server')
			augroup LspLua
				autocmd!
				au User lsp_setup call lsp#register_server({
							\ 'name': 'lua-language-server',
							\ 'cmd': {server_info->[&shell, &shellcmdflag, 'lua-language-server']},
							\ 'whitelist': ['lua'],
							\ })
			augroup END
		endif

		" ---------------------------------------------------------- "
		
		" ruby
		if executable('solargraph')
			augroup LspRuby
				autocmd!
				au User lsp_setup call lsp#register_server({
					\ 'name': 'solargraph',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
					\ 'initialization_options': {"diagnostics": "true"},
					\ 'whitelist': ['ruby'],
					\ })
			augroup END
		endif



		" ---------------------------------------------------------- "

		" bash
		if executable('bash-language-server')
		  augroup LspBash
			autocmd!
			autocmd User lsp_setup call lsp#register_server({
				  \ 'name': 'bash-language-server',
				  \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
				  \ 'allowlist': ['sh'],
				  \ })
		  augroup END
		endif

		" ---------------------------------------------------------- "
		
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

		" markmark
		" if executable('markmark-lsp')
			" augroup LspMarkdown
				" autocmd!
				" au User lsp_setup call lsp#register_server({
					" \ 'name': 'markmark-lsp',
					" \ 'cmd': {server_info->[&shell,&shellcmdflag,'markmark-lsp --stdio']},
					" \ 'whitelist': ['md', 'markdown'],
					" \ })
			" augroup END
		" endif


		" ---------------------------------------------------------- "


		" ---------------------------------------------------------- "

		" yaml
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

		" ---------------------------------------------------------- "
		
		" awk
		if executable('awk-language-server')
			augroup LspAWK
				autocmd!
				au User lsp_setup call lsp#register_server({
					\ 'name': 'awk-language-server',
					\ 'cmd': {server_info->['awk-language-server']},
					\ 'allowlist': ['awk'],
					\ })
			augroup END
		endif


		" ---------------------------------------------------------- "
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

		" ---------------------------------------------------------- "
			
		

	endif
endif
