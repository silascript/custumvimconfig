

" ------------------------------------
"				基础设置
" ------------------------------------

set nocompatible

" 格键设置
" set backspace=indent,eol,start
" 如果设置了eol就会删除行开头时，下一行会提上来
set backspace=indent,start


" ----------------------
"			外观
" ----------------------
set number
set relativenumber
" 设置当行高亮
set cursorline
" hi cursorline cterm=NONE ctermbg=grey guibg=grey
" hi cursorline cterm=NONE cterm=standout

" 设置高亮当前列
" set cursorcolumn

" 开启256色
set t_Co=256
set termguicolors

" 设置当前光标与顶部和底部距离
set scrolloff=5

" 设置状态栏
set laststatus=2
set ruler

" 高亮显示匹配的括号
set showmatch


" 使得terminal的光标变为细线，而不是默认的粗条
" 这个在vim的普通模式和插入模式都会生效。
" set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor

" if has("autocmd")  
	" au InsertEnter * silent execute  
	" au InsertLeave * silent execute
	" au VimLeave * silent execute 
" endif 



" 字体
" 给gvim用的，在termnilal下是terminal本身字体所决定vim是什么字体
" set gfn=YaHeiMono:h20

" ---------------------------
"			配色设置
" ---------------------------
" colorscheme tomorrow-night 
try
	" colorscheme sonokai 
	colorscheme gruvbox 
	" 设置sonokai样式
	" let g:sonokai_style = 'andromeda'
	" 设置gruvbox样式
	let g:gruvbox_contrast_dark='hard'
	set background=dark

catch
	colorscheme evening
endtry
" 命令模式显示指令
set showcmd


" ---------------------------
" 取消自动备份及产生swp文件
" ---------------------------
set noundofile
set nobackup
set noswapfile


" ---------------------------
"			设置缩进
" ---------------------------
set autoindent
set cindent

set shiftwidth=4
set tabstop=4
set softtabstop=4
" set shifttabstop=4
" 不要用空格代替制表符
set noexpandtab


" ---------------------------
"			 编码设置
" ---------------------------
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=utf-8,gbk,gb18030,gb2312,ucs-bom,cp936,big5,shift-jis,latin1
" set helplang=cn

" 设置双字宽
" set ambiwidth=double


" ----------------------
"		 语法高亮
" ----------------------
syntax on

" ----------------------
"		 搜索
" ----------------------
set showmatch
set smartcase

" 高亮查找匹配
set hlsearch
" 设置输入搜索内容时实时高亮
set incsearch



" ----------------------
"		 实用设置
" ----------------------
" 当文件被改动时自动载入
set autoread

" 命令行提示
set wildmenu


" --------------------------
"		非插件快捷键映射
" --------------------------

" buffer快捷键
nmap <C-b>n :bnext<CR>
nmap <C-b>p :bprev<CR>



" ---------------------------
"		vim-Plug 配置
" ---------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/vimfiles/plugged')


	
	" 开始页面
	Plug 'mhinz/vim-startify'
	" vim中文文档
	Plug 'yianwillis/vimcdoc'

	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'


	" 语法高亮增强
	Plug 'sheerun/vim-polyglot'

	" sonokai配色
	Plug 'sainnhe/sonokai'
	
	" 真彩theme
	Plug 'morhetz/gruvbox'
	
	" emmet
	Plug 'mattn/emmet-vim'

	" 快速注释
	Plug 'scrooloose/nerdcommenter'
	
	" 自动括号
	Plug 'jiangmiao/auto-pairs'
	" 彩虹括号
	" Plug 'luochen1990/rainbow'
	

	" nerdtree
	Plug 'preservim/nerdtree'

	" undo树
	Plug 'mbbill/undotree'

	" easy motion
	Plug 'easymotion/vim-easymotion'

	" 添加环绕符号 
	Plug 'tpope/vim-surround'

	" 缩进线
	Plug 'Yggdroot/indentLine'

	" 文件类型图标
	Plug 'ryanoasis/vim-devicons'
	
	" Lorem Ipsum
	Plug 'vim-scripts/loremipsum'

	" git相关
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'


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
let g:airline_theme = 'dark'


if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

" 使用powerline font
let g:airline_powerline_fonts=1



let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
" let g:airline_left_sep = '»'
" let g:airline_right_sep = '«'
let g:airline_symbols.linenr = '☰'



" powerline font

let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''

let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'


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
" let g:rainbow_active = 1
" let g:rainbow_active = 0


" ----------------------------------------
"				其他设置
" ----------------------------------------


" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on


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
" 在外再套符号格式: yss 符号
" 在外套小括号快捷命令: yssb
" 在外套尖括号得分两步：yss<或者ysst 然后输入尖括号中的内容
" 外套尖括号道理同新加一样，分左尖括号和右尖括号，左双右单
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
 


