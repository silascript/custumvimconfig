" ------------------------
"      格式化插件配置
" ------------------------



" --------------------------------------------

"  插件配置
let s:googlecodefmt_result = commands_basic#ExistPlug('google/vim-codefmt')
if s:googlecodefmt_result ==? 1

	call glaive#Install()
	" 配置shfmt
	Glaive codefmt shfmt_options=`['-i', '0', '-sr', '-ci']`

endif

" --------------------------------------------

"  插件配置
" let s:xxxresult = commands_basic#ExistPlug('插件名')
" if s:xxxresult ==? 1
" 
  " ...
" 
" endif


" --------------------------------------------

