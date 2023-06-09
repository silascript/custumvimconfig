" ----------------------------------
"		deoplete 快捷键基础设置
" ----------------------------------


" ----------------------------------------------------

" deoplete 快捷键配置
let s:deoplete_kresult = commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplete_kresult ==? 1
	
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"


endif


" ----------------------------------------------------



" ----------------------------------------------------

" 配置
" let s:xxxresult = commands_basic#ExistPlug('插件名')
" if s:xxxresult ==? 1
" 
  " ...
" 
" endif





