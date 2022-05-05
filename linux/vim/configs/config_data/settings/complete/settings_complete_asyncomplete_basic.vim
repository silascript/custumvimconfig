" --------------------------
"  asyncomplete 插件基础配置
" --------------------------

"  asyncomplete 插件配置
let s:asyncomp_result = commands_basic#ExistPlug('prabirshrestha/asyncomplete.vim')
if s:asyncomp_result ==? 1

	let g:asyncomplete_auto_completeopt = 0

	set completeopt=menuone,noinsert,noselect,preview
	" 自动关闭
	autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


	" ------------------------------------------------------

	" 路径插件
	let s:asyncomp_file_result = commands_basic#ExistPlug('prabirshrestha/asyncomplete-file.vim')
	if s:asyncomp_file_result ==? 1
		au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
		\ 'name': 'file',
		\ 'allowlist': ['*'],
		\ 'priority': 10,
		\ 'completor': function('asyncomplete#sources#file#completor')
		\ }))			
	endif


	" ------------------------------------------------------
	
	" buffer 插件
	let s:asyncomp_buffer_result = commands_basic#ExistPlug('prabirshrestha/asyncomplete-buffer.vim')
	if s:asyncomp_buffer_result ==? 1
		call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
		\ 'name': 'buffer',
		\ 'allowlist': ['*'],
		\ 'blocklist': ['go'],
		\ 'completor': function('asyncomplete#sources#buffer#completor'),
		\ 'config': {
		\    'max_buffer_size': 5000000,
		\  },
		\ }))

	endif


	" ------------------------------------------------------
	
	" ultisnips 配置
	let s:asyncomp_ultisnips_result = commands_basic#ExistPlug('prabirshrestha/asyncomplete-ultisnips.vim')
	if s:asyncomp_ultisnips_result ==? 1
		call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'allowlist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))	
	endif


endif

