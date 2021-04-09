

" let g:polyglot_disabled = ['markdown']
" let g:polyglot_disabled = ['markdown.plugin']

" ---------------------------
"		vim-Plug 配置
" ---------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" 开始页面
	Plug 'mhinz/vim-startify'
	
	" 光标样式切换
	Plug 'jszakmeister/vim-togglecursor'

	" vim中文文档
	Plug 'yianwillis/vimcdoc'

	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'


	" 语法高亮增强
	Plug 'sheerun/vim-polyglot'
	
	" 高亮当前单词
	Plug 'itchyny/vim-cursorword'

	" sonokai配色
	Plug 'sainnhe/sonokai'
	" 真彩theme
	Plug 'morhetz/gruvbox'

	" emmet
	Plug 'mattn/emmet-vim',{'for':'html'}
	
	" css
	Plug 'ap/vim-css-color',{'for':['html','css']}	


	" 快速注释
	Plug 'scrooloose/nerdcommenter'
	
	" 自动括号
	Plug 'jiangmiao/auto-pairs'
	" 彩虹括号
	Plug 'luochen1990/rainbow'
	

	" nerdtree
	Plug 'preservim/nerdtree'

	" undo树
	Plug 'mbbill/undotree'

	" easy motion
	Plug 'easymotion/vim-easymotion'

	" 添加环绕符号 
	Plug 'tpope/vim-surround'
	
	" 快速选择括号中的元素
	Plug 'wellle/targets.vim'
	" 元素快速交换
	Plug 'tommcdo/vim-exchange'

	" 缩进线
	Plug 'Yggdroot/indentLine'

	" 文件类型图标
	Plug 'ryanoasis/vim-devicons'

	" git相关
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'


	" snippet相关
	" snippet调用引擎
	" ultisnips需要依赖特定的python版本--特别恶心
	" Plug 'SirVer/ultisnips'
	
	"snipmate 引擎	
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'garbas/vim-snipmate'

	" snippet仓库
	Plug 'honza/vim-snippets'

	" Lorem Ipsum
	Plug 'vim-scripts/loremipsum'
	
	" XML相关
	Plug 'othree/xml.vim',{'for':'xml'}

	" tag相关
	Plug 'preservim/tagbar'

	" Rust相关
	Plug 'rust-lang/rust.vim',{'for':'rust'}

	" format
	Plug 'google/vim-maktaba'
	Plug 'google/vim-codefmt',{'on':['FormatCode','FormatLines']}
	

	" Plug 'plasticboy/vim-markdown'
	Plug 'masukomi/vim-markdown-folding'	

	" Preview
	Plug 'shime/vim-livedown',{'on':['LivedownPreview','LivedownToggle','LivedownKill']}

call plug#end()



" ----------------------------------
"			插件设置
" ----------------------------------

" ----------------------------
"		 strtify设置
" ----------------------------
let g:startify_files_number = 8
let g:startify_custom_header =[
            \ '			        __								   ',
            \ '		    __  __ /\_\    ___ ___					   ',
            \ '		   /\ \/\ \\/\ \ /'' __` __`\				   ',
            \ '		   \ \ \_/ |\ \ \/\ \/\ \/\ \				   ',
            \ '		    \ \___/  \ \_\ \_\ \_\ \_\				   ',
            \ '			 \/__/    \/_/\/_/\/_/\/_/				   ',
			\ '				                                       ',
            \ '',
            \ '',
            \ ] 


" ----------------------------
"		 airline设置
" ----------------------------

" let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['branch','tabline']

" buffer文件名及路径显示格式
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" airline样式设置
" let g:airline_theme = 'dark'
" let g:airline_theme = 'wombat'
let g:airline_theme = 'base16'

" 使用powerline font
" let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif


let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''

let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'


" unicode symbols
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'
" let g:airline_left_sep = '»'
" let g:airline_right_sep = '«'
" let g:airline_symbols.linenr = '☰'

" -----------------------------
"		自动符号设置
" -----------------------------



" -----------------------------
" nerdcommenter 设置
" -----------------------------
" 默认快捷键
" 注释 <leader>cc 
" 取消注释 <leader>c<space> 或者 <leader>cu

" 注释时插入分隔符
let g:NERDSpaceDelims = 1
" 去除尾部空格 
" let g:NERDTrimTrailingWhitespace = 1

" 注释前插入空行
let g:NERDCommentEmptyLines = 1


" ---------------------------
"		NerdTree设置
" ---------------------------
" 映射快捷键
map <leader>nt :NERDTreeToggle <CR>

" 目录展开关闭的小图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" -----------------------------
"		UndoTree设置
" -----------------------------
"映射快捷键
nnoremap <leader>udt :UndotreeToggle <CR>

" 设置undo文件存储
set undodir=~/.undodir/
set undofile



" -----------------------------
"			彩虹括号
" -----------------------------
" 启用或关闭彩虹括号
let g:rainbow_active = 1
" let g:rainbow_active = 0
" 配色
let g:rainbow_conf = {
\	'guifgs': ['SlateGray1','MistyRose1', 'PaleGreen3', 'LightGoldenrod1', 'Honeydew1', 'Salmon1'],
\	'ctermfgs': ['lightgreen', 'lightyellow', 'lightcyan', 'lightmagenta']
\	}


" ----------------------------------------
"				其他设置
" ----------------------------------------


" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on

" 设置折叠
" set foldenable 
" set nofoldenable 

" set foldmethod=syntax

" ft-markdown
" let g:markdown_folding = 1

" ---------------------------------------------------------
"						 surround使用
" ---------------------------------------------------------
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



" -----------------------
"		缩进线设置
" -----------------------

" let g:indentLine_color_term = 239

" 缩进线字符设置
let g:indentLine_char = '┊'
" 可以使用不同层次不同的字符
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']


" -----------------------
"		GitGutter设置
" -----------------------
" 开启gitgutter
let g:gitgutter_enabled = 1

" -----------------------
"		TagBar设置
" -----------------------
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_width=25


" ------------------------
"		SnipMate设置
" ------------------------
let g:snipMate = {'snippet_version' : 1}


" ------------------------
"		Polyglot设置
" ------------------------

" vim-markdown
" markdown conceal 级别
" set conceallevel=0
" markdown conceal 禁用
let g:vim_markdown_conceal = 0
" markdown 代码块 conceal 禁用
let g:vim_markdown_conceal_code_blocks = 0 
" markdown 折叠
" 开启或禁用vim-markdown折叠功能
" 0:开启 1:禁用
" let g:vim_markdown_folding_disabled = 0
" 1-6 级别 没有指定默认是1
" let g:vim_markdown_folding_level = 3
" let g:vim_markdown_folding_style_pythonic = 0
" let g:vim_markdown_override_foldtext = 1


" ------------------------
"	vim-markdown-folding
" ------------------------
let g:markdown_fold_style = 'nested'
set foldlevel=3




