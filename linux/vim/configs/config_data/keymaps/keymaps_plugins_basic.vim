vim9script

# ----------------------------------
#			基础插件 快捷键设置
# ----------------------------------


# ----------------------------------------------------

# cosco 插件快捷键配置
var cosco_kresult = commands_basic#ExistPlug('lfilho/cosco.vim')
if cosco_kresult == 1

	autocmd FileType c,cpp,java,javascript,css,rust,dart nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
	autocmd FileType c,cpp,java,javascript,css,rust,dart imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

endif


# ----------------------------------------------------

var easymotion_result = commands_basic#ExistPlug('easymotion/vim-easymotion')
if easymotion_result == 1
	
	map <Leader><Leader>h <Plug>(easymotion-linebackward)
	map <Leader><Leader>l <Plug>(easymotion-lineforward)

	# Move to line
	map <Leader><Leader>L <Plug>(easymotion-bd-jk)
	nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)

	# Move to word
	map <Leader><Leader>w <Plug>(easymotion-bd-w)
	nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

endif

var vim9stargate_result = commands_basic#ExistPlug('monkoose/vim9-stargate')
if vim9stargate_result == 1

	# for the start of a word
	noremap <leader>w <Cmd>call stargate#OKvim('\<')<CR>

	# for the end of a word
	noremap <leader>e <Cmd>call stargate#OKvim('\S\>')<CR>	

	# for the start of a line
	noremap <leader>l <Cmd>call stargate#OKvim('\_^')<CR>
	
	# for the last character on the line
	noremap <leader>E <Cmd>call stargate#OKvim('\S\s*$')<CR>
	
	# for the end of a line
	noremap <leader>$ <Cmd>call stargate#OKvim('$')<CR>

	# for any bracket, parentheses or curly bracket
	noremap <leader>[ <Cmd>call stargate#OKvim('[(){}[\]]')<CR>


endif

# ----------------------------------------------------

# 配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif


