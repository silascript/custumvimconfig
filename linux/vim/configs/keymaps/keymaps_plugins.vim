
" -----------------------------------------
"			插件快捷键设置及说明
" ----------------------------------------- 

" g:plug_home
" g:plugs 这个是返回plug中插件列表



" -----------------------------
"		nerdcommenter key 
" -----------------------------
" 默认快捷键
" 注释 <leader>cc 
" 取消注释 <leader>c<space> 或者 <leader>cu


" -----------------------------
"	 coco 自动添加分号插件
" -----------------------------

let s:cocoresult=commands_basic#ExistPlug('lfilho/cosco.vim')
if s:cocoresult ==? 1
	autocmd FileType c,cpp,java,javascript,css,rust,dart nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
	autocmd FileType c,cpp,java,javascript,css,rust,dart imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

endif

" -----------------------------
"		UndoTree key
" -----------------------------
let s:udtresult=commands_basic#ExistPlug('mbbill/undotree')
if s:udtresult ==? 1
	"映射快捷键
	nnoremap <leader>udt :UndotreeToggle <CR>
endif


" -----------------------------
"		deoplete key
" -----------------------------
let s:deoplresult=commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplresult ==? 1
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

endif


