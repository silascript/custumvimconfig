" ------------------------------------
"		ncm2 基础快捷键映射
" ------------------------------------

let s:ncmresult = commands_basic#ExistPlug('ncm2/ncm2') 

if s:ncmresult ==? 1
	inoremap <expr> <CR> (pumvisible() ? "\<c-y>" : "\<CR>")

	" 使用tab键来切换候选项
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

endif



" ------------------------------------
"	ncm2-snipmate 插件keymap 配置
" ------------------------------------
let s:ncmsmresult = commands_basic#ExistPlug('ncm2/ncm2-snipmate') 

if s:ncmsmresult ==? 1
	" 回车展开snippet代码
	inoremap <silent> <expr> <CR> ncm2_snipmate#expand_or("\<CR>", 'n')

endif

" ------------------------------------
"	ncm2-ultisnips 插件keymap 配置
" ------------------------------------
let s:ncmusresult = commands_basic#ExistPlug('ncm2/ncm2-ultisnips') 

if s:ncmusresult ==? 1
	" 回车展开snippet代码
	inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

endif


