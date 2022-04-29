" ---------------------------------------------------------
"					Linter插件配置
" ---------------------------------------------------------

let s:aleresult=commands_basic#ExistPlug('dense-analysis/ale')
if s:aleresult ==? 1
	" ale 样式	
	let g:ale_sign_column_always = 1
	"let g:ale_sign_error = '>>'
	"let g:ale_sign_warning = '--'
	let g:ale_sign_error = ''
	let g:ale_sign_warning = ''
	"let g:ale_completion_enabled = 1
endif

