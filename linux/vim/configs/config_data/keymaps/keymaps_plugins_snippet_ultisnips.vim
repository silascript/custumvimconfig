vim9script

# ----------------------------------
#		ultisnips 快捷键设置
# ----------------------------------


# ----------------------------------------------------

# ultisnips 快捷键配置
var ultisnips_kresult = commands_basic#ExistPlug('SirVer/ultisnips')
if ultisnips_kresult == 1
	# 
	# inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	# inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	# inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
	
	# 将 ultisnips 展开代码的快捷键设成其他，这样避免与 deoplete 默认的 Tab 选择候选项快捷键冲突
	g:UltiSnipsExpandTrigger		= "<c-e>"
	g:UltiSnipsJumpForwardTrigger	= "<c-j>"
	g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
	g:UltiSnipsRemoveSelectModeMappings = 0






endif


# ----------------------------------------------------


# neosnippet 快捷键配置
var neosnippet_result = commands_basic#ExistPlug('Shougo/neosnippet.vim')
if neosnippet_result == 1

	# imap <expr><TAB>
	# \ pumvisible() ? "\<C-n>" :
	# \ neosnippet#expandable_or_jumpable() ?
	# \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

	imap <C-k>     <Plug>(neosnippet_expand_or_jump)
	smap <C-k>     <Plug>(neosnippet_expand_or_jump)
	xmap <C-k>     <Plug>(neosnippet_expand_target)


	smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"



endif


# ----------------------------------------------------

# 配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif





