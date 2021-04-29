" ------------------------------------
"		deoplete 基础快捷键映射
" ------------------------------------

" -----------------------------
"		deoplete key
" -----------------------------
let s:deoplresult=commands_basic#ExistPlug('Shougo/deoplete.nvim')
if s:deoplresult ==? 1
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

endif


" -----------------------------
"		neosnippet
" -----------------------------

let s:dsnipresult = commands_basic#ExistPlug('Shougo/neosnippet.vim')
if s:dsnipresult ==? 1
	smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

endif


