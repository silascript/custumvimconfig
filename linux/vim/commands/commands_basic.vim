
" -------------------------------------
"			工具脚本和命令
" -------------------------------------

" 从plug的uri值截取出plug名称
" 作者账号/项目 --其实就是github的那个名称样式
function commands_basic#PlugSubName(pluguri)
	"echom a:pluguri
	let uriprefix='https://git::@github.com/'
	let urisubfix='.git'
	
	let plen=strlen(l:uriprefix)
	let strsubidx = stridx(a:pluguri,l:urisubfix)-l:plen
	let sresult= strpart(a:pluguri,l:plen,l:strsubidx)
	"echom l:sresult

	return l:sresult

endfunction


" 检测插件是否存在
function commands_basic#ExistPlug(plugname)
	
	" 获取vim-plug插件集合
	let l:plug_dict=g:plugs
	"echom l:plug_values
	
	" 遍历集合
	for vtemp in values(l:plug_dict)
		"echom vtemp['uri']
		let uristr =  vtemp['uri']	
		"echom l:uristr
		let sresult = commands_basic#PlugSubName(l:uristr) 
		"echom l:sresult
		if a:plugname ==? l:sresult
			echom '已经安装 '.a:plugname.' 插件'
			return 1
		else
			continue
		endif

	endfor
		echom '没有安装 '.a:plugname.' 插件'
		return 0

endfunction

command -nargs=1 ExistPlug call commands_basic#ExistPlug(<args>)





