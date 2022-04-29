" --------------------------------- "
"		html 预览 小工具			"
" --------------------------------- "

if has('unix')
	let g:vrh_osname = 'unix'

endif

" 检测浏览器
if !exists('g:vim_html_preview_browser')
	" let g:vim_html_preview_browser = 'google-chrome'
	let g:vim_html_preview_browser = 'firefox'
endif

" 是否使用xdg-open 如果没有设默认不使用
if !exists('g:vim_html_preview_use_xdg_open')
	let g:vim_html_preview_use_xdg_open = 0
endif


function preview_html#PreviewCurrentHTML()
	
	" echom 'PreviewCurrentHTML function Test!'
	


	" echom expand('%:p')	
	" 获取当前文件的绝对路径
	let current_file_path=expand('%:p')
	" 获取当前文件的后缀名	
	let cfile_exname = expand('%:e')

	" 判断当前否有文件	
	if  strlen(trim(l:current_file_path)) > 0
		" echom l:current_file_path
		" echom l:cfile_exname
		
		" execute '!'.'google-chrome'
		if cfile_exname !=? 'html' 
			echom 'It is not html file!'
			return
		endif

		if g:vim_html_preview_use_xdg_open == 0 
			call preview_html#OpenCurrentFileByBrowser(g:vim_html_preview_browser,trim(l:current_file_path))
		else
			let l:cmstr = 'xdg-open ' . trim(l:current_file_path)		
			call system(l:cmstr)
		endif
	else
		" echom '没有文件!'
		echom 'no file!'
	endif	

	

endfunction


" 使用浏览器打开当前文件
" browse_name: 指定浏览器程序(可以是路径也可以是名称，只要系统能调用到就行)
" cfile_path: 当前文件路径
function preview_html#OpenCurrentFileByBrowser(browsenName,cfilePath)
	" echom a:browsenName
	" let commstr =string(a:browsenName)	
	" echom a:cfilePath
	
	let commstr = ''

	if strlen(trim(a:cfilePath)) > 0
		if strlen(trim(a:browsenName)) > 0
			if executable(a:browsenName) 
				" echom a:browsenName
				let	l:commstr = a:browsenName . ' ' . a:cfilePath
			endif
		else
			echom 'Can Not open ' . a:cfilePath
			return
		endif
	else
		echom "Please input the File\'s Path."
		return
	endif
	
	" echom l:commstr
	call system(l:commstr)
	" call system('clear')
	echom l:commstr
endfunction

" 指定具体的浏览器
command -nargs=+ PreviewCurrentHTMLByBrowser call preview_html#OpenCurrentFileByBrowser(<f-args>)

" 使用默认浏览器
command -nargs=0 PreviewCurrentHTML call preview_html#PreviewCurrentHTML()


