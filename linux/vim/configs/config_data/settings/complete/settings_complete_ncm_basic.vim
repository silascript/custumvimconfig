" ------------------------
"      ncm2 补全框架插件配置
" ------------------------


"  ncm2 插件配置
let s:ncm2_result = commands_basic#ExistPlug('ncm2/ncm2')
if s:ncm2_result ==? 1

	" 缓存
	autocmd BufEnter * call ncm2#enable_for_buffer()
	
	" 补全模式
	" noselect 如果不开启默认会选中第一个候选项 
	" set completeopt=noinsert,menuone,noselect
	set completeopt=noinsert,menuone

	" 触发补全字符数
	let ncm2#complete_length = [[1, 1]]

	" 补全菜单弹出延迟
	let ncm2#popup_delay = 8

	set shortmess+=c





endif



