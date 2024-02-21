" -----------------------------------
"		asyncomplete 基础配置
" -----------------------------------
let s:asyncresult=commands_basic#ExistPlug('prabirshrestha/asyncomplete.vim')

if s:asyncresult ==? 1
	let g:asyncomplete_auto_completeopt = 0	
	set completeopt=menuone,noinsert,noselect,preview

	" 自动关闭
	autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

endif

" asyncomplete 文件补全插件配置
let s:afileresult=commands_basic#ExistPlug('prabirshrestha/asyncomplete-file.vim')

if s:afileresult ==? 1

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

endif

" asyncomplete buffer 插件配置

let s:abuffresult=commands_basic#ExistPlug('prabirshrestha/asyncomplete-buffer.vim')

if s:abuffresult ==? 1
	
	" 清理buffer
	let g:asyncomplete_buffer_clear_cache = 1

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


