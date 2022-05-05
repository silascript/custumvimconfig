" ------------------------
"   easycomplete 插件配置
" ------------------------

" easycomplete 插件配置
let s:_result = commands_basic#ExistPlug('jayli/vim-easycomplete')
if s:_result ==? 1
	" 样式： 自带四种样式：dark, light, rider, sharp
	let g:easycomplete_scheme="sharp"

endif

