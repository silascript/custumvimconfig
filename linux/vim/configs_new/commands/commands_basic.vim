vim9script

# -----------------------------------------------------
#			工具脚本和命令
#        这工具脚本是基于使用 Plugpac 插件管理器
# -----------------------------------------------------


# 从plug的uri值截取出plug名称
# 作者账号/项目 --其实就是github的那个名称样式
# export def commands_basic#PlugSubName(pluguri: string): string
# def PlugSubName(pluguri: string): string

	# # echom a:pluguri
	# var uriprefix = 'https://git::@github.com/'
	# var urisubfix = '.git'
	
	# # 前缀长度
	# var plen = strlen(uriprefix)
	# # 要截取字符串长度
	# var sublen = stridx(pluguri, urisubfix) - plen
	# # 截取
	# var sresult = strpart(pluguri, plen, sublen)
	# # echom l:sresult

	# return sresult

# enddef

# 插件名处理函数
# spname 参数应为 xxx/xxx 格式
# 经过函数处理后的插件名只剩 / 右边的字符串 
# 这是为 Plugpac 插件管理器的 HasPlugin() 函数准备的
# HasPlugin() 函数只能判断不包含帐号的插件名 
# 这货比 vim-plug 的 plugs 返回的插件名列表相比不太严谨了
def PlugSubName(spname: string): string

	# 以 / 为分隔符将字符串分割成一个列表
	var subname_list = split(spname, "/")
	
	if len(subname_list) > 1
		# 取最后的元素
		return subname_list[len(subname_list) - 1]
	else
		return subname_list[0]	
	endif
	
enddef


#  检测插件是否存在
export def ExistPlug(plugname: string): number 
	
	# if !exists('g:plugs')
		# return 0	
	# endif

	if !exists('plugpac#HasPlugin')
		return 0
	endif
	
	# 处理一下插件名
	# 
	var subname = PlugSubName(plugname)

	if g:plugpac#HasPlugin(subname)
		return 1
	else
		return -1
	endif


	# 获取vim-plug插件集合
	# var plug_dict = g:plugs
	# echom l:plug_values
	
	# 遍历集合
	# for vtemp in values(plug_dict)
		# # echom vtemp['uri']
		#var uristr =  vtemp['uri']	
		# # echom l:uristr
		#var sresult = PlugSubName(uristr) 
		# # echom l:sresult
		# if plugname ==? sresult
			# # echom '已经安装 '.a:plugname.' 插件'
			# return 1
		# else
			# continue
		# endif

	# endfor
		# # echom '没有安装 '.a:plugname.' 插件'
		# return -1

enddef

command! -nargs=1 ExistPlugin call ExistPlug(<args>)

# ----------------------------------------------

# 获取 vim 自带的 colorscheme 名字
export def FindDefaultColorSchemeName(colordir_path: string): list<string>
# export def FindDefaultColorSchemeName(colordir_path: string): list<any>
	
	var c_path = colordir_path
	
	if strlen(colordir_path) == 0
		c_path = "$VIMRUNTIME/colors"
	endif

	# var color_list = glob("c_path/*.vim")
	var colorfile_list = []
	# color_list = globpath(c_path, "*.vim", true, true)
	colorfile_list = globpath(c_path, "*.vim", false, true)
	
	# 结果 list
	var rlist = []
	
	# 遍历取到的文件值
	if !empty(colorfile_list)
		for cstr_temp in colorfile_list
			var t_list = split(cstr_temp, "/")
			# 再按 .vim 切割,取不带.vim后缀的配色名
			var c_name = split(t_list[-1], ".vim")
			# 添加到结果 list 中	
			add(rlist, c_name[0])
		endfor
	endif
	
	# echo rlist 
	# 返回 配色名称列表
	return rlist 

enddef

command! -nargs=? FindDefaultColorName call FindDefaultColorSchemeName(<args>)

