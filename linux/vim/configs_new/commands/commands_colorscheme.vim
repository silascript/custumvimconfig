vim9script

# -----------------------------------------------------
#			colorscheme 相关的工具脚本
# -----------------------------------------------------

# ---------------------------------------------------------------

# 根据给的vim 默认配色目录路径获取所有配色名称列表
# 参数：vim自带的配色目录路径
def FindDefaultColorSchemeNameListByPath(csn_path: string): list<string>
	
	# 配色目录路径
	var c_path = csn_path
	# 配色列表
	var r_list = []
	# 如果配色目录路径为空，就取给个默认路径
	# if strlen(colordir_path) == 0
	if empty(c_path)
		c_path = "$VIMRUNTIME/colors"
	endif

	# 根据配色目录路径获取配色名称列表
	r_list = FindColorSchemeNameListByPath(c_path)
	
	# 返回配色列表
	return r_list
enddef


# 将配色列表转成字典形式
# 参数是配色列表
def CoverColorSchemeNameListToDict(csn_list: list<string>): dict<string>

	# 配色字典
	var r_dict = {}
	
	# 构建配色字典
	if !empty(csn_list)
		# 遍历列表	
		for csn_temp in csn_list
			# 添加元素，即添加键值对
			# 键和值都一样，方便取值
			r_dict[csn_temp] = csn_temp	
		endfor
	endif

	# 返回配色字典
	return r_dict

enddef


# =======================外部可调的函数============================= 

# 搜索指定目录下所有的配色
# 返回配色名称列表
# 参数：配色目录路径
export def FindColorSchemeNameListByPath(colordir_path: string): list<string>

	# 配色目录路径
	var c_path = colordir_path
	
	# 配色列表
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


# 获取 vim 自带的 colorscheme 名字
# 返回值为列表
export def FindDefaultColorSchemeNameList(): list<string>

	# 默认vim 配色目录路径
	var c_path = "$VIMRUNTIME/colors"
	# 配色名称列表
	var color_name_list = []
	# 获取配色名称列表
	color_name_list = FindDefaultColorSchemeNameListByPath(c_path)
	
	# 返回配色名称列表
	return color_name_list

enddef

# command! -nargs=? FindDefaultColorNameList call FindDefaultColorSchemeNameList(<args>)


# 获取配色名称字典
# 参数为配色目录路径
# 返回值为字典
export def FindColorSchemeNameDict(csn_path: string): dict<string>
	
	# 配色字典
	var csn_dict = {}
	# 获取配色名称列表
	var csn_list = FindColorSchemeNameListByPath(csn_path)
	if !empty(csn_list)
		# 转换成字典
		csn_dict = CoverColorSchemeNameListToDict(csn_list)
	endif

	# 返回字典
	return csn_dict

enddef


# 获取vim自带配色名称字典
# 返回值为字典
export def FindDefaultColorSchemeNameDict(): dict<string>
	
	# 结果字典
	var cr_dict = {}
	
	# 自带配色目录路径
	var csn_path = "$VIMRUNTIME/colors"
	# 获取配色字典
	cr_dict = FindColorSchemeNameDict(csn_path)

	# 返回结果字典
	return cr_dict

enddef

# ---------------------------------------------------------------

