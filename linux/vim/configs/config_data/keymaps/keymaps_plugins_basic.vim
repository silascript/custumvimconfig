" ----------------------------------
"			基础插件 快捷键设置
" ----------------------------------


" ----------------------------------------------------

" cosco 插件快捷键配置
let s:cosco_kresult = commands_basic#ExistPlug('lfilho/cosco.vim')
if s:cosco_kresult ==? 1

	autocmd FileType c,cpp,java,javascript,css,rust,dart nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
	autocmd FileType c,cpp,java,javascript,css,rust,dart imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

endif


" ----------------------------------------------------

let s:easymotion_result = commands_basic#ExistPlug('easymotion/vim-easymotion')
if s:easymotion_result ==? 1
	
	map <Leader><Leader>h <Plug>(easymotion-linebackward)
	map <Leader><Leader>l <Plug>(easymotion-lineforward)

endif

" ----------------------------------------------------

" 配置
" let s:xxxresult = commands_basic#ExistPlug('插件名')
" if s:xxxresult ==? 1
" 
  " ...
" 
" endif


