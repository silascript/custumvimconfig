
" --------------------------------
"			vim-lsc 配置
" --------------------------------

let s:lscresult = commands_basic#ExistPlug('natebosch/vim-lsc')
if s:lscresult ==? 1 

	"autocmd CompleteDone * silent! pclose

	let g:lsc_enable_autocomplete  = v:true
	" let g:lsc_enable_diagnostics   = v:false
	" let g:lsc_reference_highlights = v:false

	" let g:lsc_auto_map = v:true
	set completeopt=menu,menuone,noinsert,noselect

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
	 \  'command':'pyls'
	 \ }
	 \}


	"let g:lsc_server_commands = {
     "\ 'java': {
     "\    'command': 'jdtls'
     "\  },
     "\}


endif


