vim9script

# -------------------------------------
#			工具脚本和命令
# -------------------------------------

# 从plug的uri值截取出plug名称
# 作者账号/项目 --其实就是github的那个名称样式
# export def commands_basic#PlugSubName(pluguri: string): string
def PlugSubName(pluguri: string): string

	# echom a:pluguri
	var uriprefix = 'https://git::@github.com/'
	var urisubfix = '.git'
	
	# 前缀长度
	var plen = strlen(uriprefix)
	# 要截取字符串长度
	var sublen = stridx(pluguri, urisubfix) - plen
	# 截取
	var sresult = strpart(pluguri, plen, sublen)
	# echom l:sresult

	return sresult

enddef


#  检测插件是否存在
export def ExistPlug(plugname: string): number 
	
	if !exists('g:plugs')
		return 0	
	endif


	# 获取vim-plug插件集合
	var plug_dict = g:plugs
	# echom l:plug_values
	
	# 遍历集合
	for vtemp in values(plug_dict)
		# echom vtemp['uri']
		var uristr =  vtemp['uri']	
		# echom l:uristr
		var sresult = PlugSubName(uristr) 
		# echom l:sresult
		if plugname ==? sresult
			# echom '已经安装 '.a:plugname.' 插件'
			return 1
		else
			continue
		endif

	endfor
		# echom '没有安装 '.a:plugname.' 插件'
		return -1

enddef

# command -nargs=1 ExistPlug call commands_basic#ExistPlug(<args>)
command -nargs=1 ExistPlugin call ExistPlug(<args>)

# ----------------------------------------------
# 引入markdown 小工具
# import "./markdown_tools.vim"



