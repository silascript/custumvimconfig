vim9script

# ------------------------
#      状态栏插件配置
# ------------------------

# 启用标签栏
set showtabline=2

# --------------------------------------------

#  插件配置
var lightline_result = commands_basic#ExistPlug('itchyny/lightline.vim')
if lightline_result ==? 1
	# 检测是否已装 vim-devicons 图标插件	
	var devicons_result = commands_basic#ExistPlug('ryanoasis/vim-devicons')

	g:lightline = {
		\ 'colorscheme': 'wombat',
		\ 'active': {
				\ 'left': [ 
					\ [ 'mode', 'paste' ],
					\ [ 'readonly', 'gitbranch', 'filename', 'modified'],
					\ [ 'gitinfo', 'method' ]
				\ ],
				\ 'right': [
					\ [
						\ 'filetype',
						\ 'fileformat',
						\ 'hex', 
						\ 'asc', 
						\ 'lineinfo'
					\ ],
				\ ] 
		\ },
		\ 'separator': { 'left': '', 'right': ''},
		\ 'subseparator': { 'left': '', 'right': ''},
		\ 'component_function': {
		\ 'filetype': 'MyFiletype',
			\ 'fileformat': 'MyFileformat',
			\ 'gitbranch': 'BranchFugitiveHead',
			\ 'lineinfo': 'LightlineLineinfo',
		\ }
	\ }

	g:lightline.component = {
		\ 'readonly':  '%{&readonly?"":""}',
	\ }	

	# -------------------------------------------------------

	# 显示标签栏
	var llbuffer_result = commands_basic#ExistPlug('mengelbrecht/lightline-bufferline')
	if llbuffer_result ==? 1
	
		# let g:lightline                  = {}
		g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
		g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
		g:lightline.component_type   = {'buffers': 'tabsel'}

		if devicons_result ==? 1
			# 启用文件类型图标
			g:lightline#bufferline#enable_devicons = 1
			# 图标位置 可选left right first 默认left 
			# g:lightline#bufferline#icon_position
		endif
		# 未命名文件名
		g:lightline#bufferline#unnamed  = '[No Name]'
		# 启用unicode字符 显示"只读" "修改中"等状态
		g:lightline#bufferline#unicode_symbols = 1

	# --------------------------------------


	endif


endif


# ----------------------------------------

# 检测是否已装 vim-devicons 图标插件	
var devicons_result = commands_basic#ExistPlug('ryanoasis/vim-devicons')
if devicons_result ==? 1

	# 显示文件类型
	function MyFiletype()
		return winwidth(0) > 70 ? (&filetype !=#'' ? WebDevIconsGetFileTypeSymbol(): 'no ft') : ''	
	endfunction

	# 显示系统及文件编码
	function MyFileformat()
		return winwidth(0) > 70 ? (&fileencoding!=# '' ? &fileencoding.' '.WebDevIconsGetFileFormatSymbol(): &encoding . ' ' . WebDevIconsGetFileFormatSymbol()) : ''. WebDevIconsGetFileFormatSymbol()
	endfunction	


endif


# 行信息
function LightlineLineinfo() abort
	return &filetype ==? 'help'		   ? ''  :
	\ &filetype ==? 'defx'             ? ' ' :
	\ &filetype ==? 'coc-explorer'     ? ' ' :
	\ &filetype ==? 'denite'           ? ' ' :
	\ &filetype ==? 'tagbar'           ? ' ' :
	\ &filetype ==? 'vista_kind'       ? ' ' :
	\ &filetype ==? 'vista'            ? ' ' :
	\ &filetype =~? '\v^mundo(diff)?$' ? ' ' :
	\ printf('%3ld%% %4ld:%3ld', 100*line('.')/line('$'),  line('.'), col('.'))
endfunction

# gitbranch显示样式
function BranchFugitiveHead() abort
	try
		let fh = FugitiveHead()
		return fh !=#''?' '.fh : ''
	catch
		return ''
	endtry
endfunction



# --------------------------------------------

#  插件配置
# let s:xxxresult = commands_basic#ExistPlug('插件名')
# if s:xxxresult ==? 1
# 
  # ...
# 
# endif
