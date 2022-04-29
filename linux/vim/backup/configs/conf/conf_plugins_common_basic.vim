" ---------------------------------------------------------
"					插件配置(非补全插件)
" ---------------------------------------------------------

" --------------------------------------------------
"				nerdcommenter 设置
" --------------------------------------------------
" scrooloose/nerdcommenter 已更为为 preservim/nerdcommenter 
let s:nerdcomresult=commands_basic#ExistPlug('preservim/nerdcommenter')

if s:nerdcomresult ==? 1
	"filetype plugin on
	"echom 'nerdcommenter '.nerdcommcresult

	" 默认快捷键
	" <leader>cc 注释 
	" <leader>cu 取消注释
	" <leader>c<space> 智能判断是注释还是取消注释

	" 注释时注释符号后插入一个空格
	let g:NERDSpaceDelims = 1
	" 去除尾部空格 
	" let g:NERDTrimTrailingWhitespace = 1

	" 注释前插入空行
	let g:NERDCommentEmptyLines = 1
	
	let g:NERDAltDelims_java = 1
	
	let g:NERDCustomDelimiters = { 'c': { 'left': '//' } }

endif

" ------------------------------------------------
"					cosco 设置
" ------------------------------------------------

let s:cocoresult=commands_basic#ExistPlug('lfilho/cosco.vim')

if s:cocoresult ==? 1
	let g:cosco_filetype_whitelist = ['c','cpp','java','php', 'javascript']
	let g:cosco_filetype_blacklist = ['vim', 'bash']

endif

" ---------------------------------------------
"				UndoTree设置
" ---------------------------------------------
let s:udtresult=commands_basic#ExistPlug('mbbill/undotree')

if s:udtresult ==? 1
	" 设置undo文件存储
	set undodir=~/.undodir/
	set undofile

endif

" ----------------------------------------------------
"					surround使用
" ----------------------------------------------------
" 添加双引号 ysiw+"
" 如果要添加tag符号，即尖括号可以使用快捷命令ysiwt
" 注意如果是ysiw<这方式，必须是左尖括号，才是成对tag
" 如果是ysiw> 使用了右尖括号,那就会变成单tag
" 替换格式: cs 符号 符号
" 如将tag符号即<>这种尖括号替换成其他符号可以使用cst快捷命令
" 删除格式: ds 符号
" 行包围符号格式: yss 符号
" 行包围添加小括号快捷命令: yssb
" 行包围尖括号得分两步：yss<或者ysst 然后输入尖括号中的内容
" 行包围尖括号道理同新加一样，分左尖括号和右尖括号，左双右单
"
" ---------------------------------------------------------


" ------------------------------------------------
"					startify设置
" ------------------------------------------------
let s:startresult=commands_basic#ExistPlug('mhinz/vim-startify')

if s:startresult ==? 1
	let g:startify_files_number = 8

	let g:startify_custom_header =[
				\ '   __      ___             ',
                \ '   \ \    / (_)            ',
                \ '    \ \  / / _ _ __ ___    ',
                \ '     \ \/ / | | `_ ` _ \   ',
                \ '      \  /  | | | | | | |  ',
                \ '       \/   |_|_| |_| |_|  ',
                \ '',
                \ ]

endif

" ------------------------------------------
"				彩虹括号
" ------------------------------------------

let s:rbesult= commands_basic#ExistPlug('luochen1990/rainbow')
if s:rbesult ==? 1
	" 启用或关闭彩虹括号
	let g:rainbow_active = 1
	" let g:rainbow_active = 0
	" 配色
	let g:rainbow_conf = {
	\	'guifgs': ['SlateGray1','MistyRose1', 'PaleGreen3', 'LightGoldenrod1', 'Honeydew1', 'Salmon1'],
	\	'ctermfgs': ['lightgreen', 'lightyellow', 'lightcyan', 'lightmagenta']
	\	}

endif


" ------------------------------------------------
"			vim-devicons 设置
" ------------------------------------------------

"let s:deviconsreusl = commands_basic#ExistPlug('ryanoasis/vim-devicons')

"if s:deviconsreusl ==? 1
	


"endif


" ------------------------------------------------
"					defx 设置
" ------------------------------------------------
let s:defxresult = commands_basic#ExistPlug('Shougo/defx.nvim')

if s:defxresult ==? 1
	call defx#custom#option('_', {
		  \ 'winwidth': 30,
		  \ 'split': 'vertical',
		  \ 'show_ignored_files': 0,
		  \ 'buffer_name': 'defxplorer',
		  \ 'toggle': 1,
		  \ })

endif

" ------------------------------------------------
"				defx-icons 设置
" ------------------------------------------------
let s:diconresult = commands_basic#ExistPlug('kristijanhusak/defx-icons')

if s:diconresult ==? 1
	
	let g:defx_icons_enable_syntax_highlight = 1
	"let g:defx_icons_column_length = 1
	"let g:defx_icons_directory_icon = ''
	"let g:defx_icons_mark_icon = '*'
	"let g:defx_icons_copy_icon = ''
	"let g:defx_icons_link_icon = ''
	"let g:defx_icons_move_icon = ''
	"let g:defx_icons_parent_icon = ''
	"let g:defx_icons_default_icon = ''
	"let g:defx_icons_directory_symlink_icon = ''

	"let g:defx_icons_root_opened_tree_icon = ''
	"let g:defx_icons_nested_opened_tree_icon = ''
	"let g:defx_icons_nested_closed_tree_icon = ''


endif


" ------------------------------------------------
"					fern 设置
" ------------------------------------------------
"let s:fernnerdresutl =commands_basic#ExistPlug('lambdalisue/fern-renderer-nerdfont.vim') 
let s:ferniconresutl =commands_basic#ExistPlug('lambdalisue/fern-renderer-devicons.vim') 
if s:ferniconresutl ==? 1

	"let g:fern#renderer = 'nerdfont'
	" 使用了fern-renderer-devicons插件
	let g:fern#renderer = 'devicons'

endif

" ------------------------------------------------
"				ultisnips 设置
" ------------------------------------------------
"let s:usnipresutl = commands_basic#ExistPlug('SirVer/ultisnips') 

"if s:usnipresutl ==? 1
	"let g:UltiSnipsExpandTrigger="<tab>"
"endif


" ------------------------------------------------
"					SnipMate设置
" ------------------------------------------------
let s:snipmateresult = commands_basic#ExistPlug('garbas/vim-snipmate') 

if s:snipmateresult ==? 1

	let g:snipMate = {'snippet_version' : 1}

endif

" ------------------------------------------------
"				neosnippet 设置
" ------------------------------------------------
"let s:nsnipresult = commands_basic#ExistPlug('Shougo/neosnippet.vim')

"if s:nsnipresult ==? 1

	"" Enable snipMate compatibility feature.
	"let g:neosnippet#enable_snipmate_compatibility = 1

	"" Tell Neosnippet about the other snippets
	"let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'

"endif


" ------------------------------------------------
"				vim-hexokinase
"					显示颜色
" ------------------------------------------------
let s:hcolorresult = commands_basic#ExistPlug('RRethy/vim-hexokinase') 

if s:hcolorresult ==? 1
	let g:Hexokinase_highlighters = ['backgroundfull']
endif


" ------------------------------------------------
"			vim-highlightedyank
"				高亮复制
" ------------------------------------------------
let s:hlyankresult = commands_basic#ExistPlug('machakann/vim-highlightedyank') 

if s:hlyankresult ==? 1
	" 设置高亮持续时间 单位为毫秒
	let g:highlightedyank_highlight_duration = 5000
endif



" ------------------------------------------------
"					缩进线设置
" ------------------------------------------------
let s:inlineresult = commands_basic#ExistPlug('Yggdroot/indentLine') 

if s:inlineresult ==? 1
	let g:indentLine_enabled = 1
	
	"let g:indent_guides_start_level =1
	"let g:indentLine_showFirstIndentLevel = 0
	"let g:indentLine_setColors = 0

	"let g:indentLine_setConceal = 0
	"let g:indentLine_conceallevel = 2

	let g:indentLine_char = '┊'
	"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

endif


" ------------------------------------------------
"			vim-indent-guides 设置
" ------------------------------------------------
let s:inguiresult = commands_basic#ExistPlug('nathanaelkane/vim-indent-guides') 

if s:inguiresult ==? 1
	let g:indent_guides_enable_on_vim_startup = 1
	let g:indent_guides_start_level = 1 
	" 缩进线宽度
	let g:indent_guides_guide_size = 1

endif


" ------------------------------------------------
"					fzf.vim 设置
" ------------------------------------------------

let s:fzfresult = commands_basic#ExistPlug('junegunn/fzf.vim') 
if s:fzfresult  ==? 1
	
	" 布局
	" window 是弹出窗口
	"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6} }
	" down是在底部显示 值是窗口占比
	let g:fzf_layout = { 'down':'40%' }
	"if has('nvim') && !exists('g:fzf_layout')
	  "autocmd! FileType fzf
	  "autocmd  FileType fzf set laststatus=0 noshowmode noruler
		"\| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
	"endif


endif



" ------------------------------------------------
"				LeaderF 设置
" ------------------------------------------------
let s:leaderfresult = commands_basic#ExistPlug('Yggdroot/LeaderF') 
if s:leaderfresult ==? 1
	
	" 弹出窗口
	"let g:Lf_WindowPosition = 'popup'

	let g:Lf_ShowDevIcons = 1	
	let g:Lf_DevIconsFont = "Sarasa Term SC Regular"

endif


" ------------------------------------------------
"				tagbar 设置
" ------------------------------------------------
let s:tagbarfresult = commands_basic#ExistPlug('preservim/tagbar') 
if s:tagbarfresult ==? 1
	" 设置显示窗口宽度
	let g:tagbar_width = max([25, winwidth(0) / 5])

endif


" ------------------------------------------------
"				vista 设置
" ------------------------------------------------

let s:vistaresult = commands_basic#ExistPlug('liuchengxu/vista.vim') 
if s:vistaresult ==? 1

	"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
	let g:vista_default_executive = 'ctags'
	"let g:vista#renderer#enable_icon = 1	

	"let g:vista#renderer#icons = {
		"\ "function": "\uf794",
		"\ "variable": "\uf71b",
	"\ }

	
endif





