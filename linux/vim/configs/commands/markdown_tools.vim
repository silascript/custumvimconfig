" --------------------------------- "
"		Markdown 小工具				"
" --------------------------------- "

" 生成markdown图片目录
" 目录名称：当前markdown文件的文件名.assets
" 之所以用此格式的目录名，主要是为了与Typora兼容
function markdown_tools#CreateMDImageDirectory()

	" 获取当前文件的后缀名
	let cfilesub = expand('%:e')

	if l:cfilesub ==? 'md'
		" 获取当前文件名
		" 只取文件名不要路径和后缀名
		let cfilename = expand('%:t:r')

		" 处理下图片目录名字
		" 图片目录名:
		" 当前markdown文件的文件名+.assets (这是为了兼容Typora)
		let	img_dir_name_str = l:cfilename . '.assets' 

		" 检测目录是否已存在
		let dirnamepath = './'.l:img_dir_name_str
		
		" 使用 getfsize 检测目录
		" getfsize 返回文件字节大小
		" 目录返回 0，找不到文件返回 -1，文件过大，超出了 vim 的数值的范围，返回 -2
		let fsizeresult = getfsize(l:dirnamepath)
		if fsizeresult == 0
			echom dirnamepath.' 目录已存在！'
		elseif fsizeresult == -1
			echom '可以创建'.dirnamepath.'目录了！'
			"echom system('ls')
			" 创建目录并记录创建结果
			let mkdir_result = system('mkdir '.l:dirnamepath)
			if l:mkdir_result == 0
				echom '创建'.l:dirnamepath.'目录成功！'
			else
				echom '创建'.l:dirnamepath.'目录失败！'
			endif

		endif


		" 使用 filewritable 函数检测目录
		" 检测目录是否存在 返回值为2 
		" 返回值为1是文件存在并可写 0是文件不存在
		" 此函数存在问题
		"let existsdir = filewritable(expand(l:dirnamepath))
		
		" 使用isdirectory 及 getfsize 函数检测目录及文件
		"if isdirectory(dirnamepath)
			"echom dirnamepath.' 目录已存在！'
		"else
			"let fsizeresult = getfsize(dirnamepath)
			"if l:fsizeresult == -1
				"echom '可以创建'.dirnamepath.'目录了！'
			"else
				"echom dirnamepath.'已存在同名文件，不能创建同名目录！'
			"endif
		"endif


	else
		echom  '当前文件的后缀名不是md！'
	endif

endfunction


" 生成markdown图片目录 带参数
" 参数为图片目录名称
function markdown_tools#CreateMDImageDirectoryWithArgs(img_dir_name)

	" 兼容性把参数都转成字符串
	let img_dir_name_str = string(a:img_dir_name)
	
	"echom '图片目录名: ' + l:img_dir_name_str

	return l:img_dir_name_str


endfunction

" -----------------------------------------------------------


" 注册函数
"command -nargs=1 CreateMDImageDirectoryWithArgs call markdown_tools#CreateMDImageDirectoryWithArgs(<args>)

command -nargs=0 CreateMDImageDirectory call markdown_tools#CreateMDImageDirectory()
