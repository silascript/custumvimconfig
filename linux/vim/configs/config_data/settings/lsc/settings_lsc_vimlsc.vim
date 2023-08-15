" ------------------------
"     vim-lsc 插件配置
" ------------------------

" vim-lsc 插件配置
let s:vimlsc_result = commands_basic#ExistPlug('natebosch/vim-lsc')
if s:vimlsc_result ==? 1

	"autocmd CompleteDone * silent! pclose

	let g:lsc_enable_autocomplete  = v:true
	" let g:lsc_enable_diagnostics   = v:false
	" let g:lsc_reference_highlights = v:false

	" let g:lsc_auto_map = v:true
	set completeopt=menu,menuone,noinsert,noselect

	" 补全触发字符长度
	let g:lsc_autocomplete_length = 1


	" 为语言指定lsp
	"let g:lsc_server_commands = {'c':'clangd'}
	"let g:lsc_server_commands = {'java': 'jdtls'}
	"let g:lsc_server_commands = {'python':'pyls'}


	let g:lsc_server_commands = {
		 \ 'c': {
			 \    'command': 'clangd --background-index',
			 \	  'suppress_stderr': v:true
		 \	},
		 \ 'cpp':{
			 \	'command':'clangd --background-index',
			 \  'suppress_stderr': v:true
		 \ },
		 \ 'python':{
			 \  'command':'pylsp'
		 \ },
		 \ 'rust':{
			 \  'command':'rls'
		 \ },
		 \ 'go':{
			 \ 'command':'gopls'
		 \ },
		 \ 'javascript':{
			 \ 'command':'typescript-language-server --stdio'
		 \ },
		 \ 'html':{
			 \ 'command':'html-languageserver --stdio'
		 \ },
		 \ 'css':{
			 \ 'command':'css-languageserver --stdio'
		 \ },
		 \ 'markdown':{
			 \ 'command':'marksman server'
		 \ },
	 \}


	"let g:lsc_server_commands = {
     "\ 'java': {
     "\    'command': 'jdtls'
     "\  },
     "\}

endif
