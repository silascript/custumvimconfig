
" ------------------------------------  基础设置  ------------------------------------ 


set nocompatible

" 格键设置
" set backspace=indent,eol,start
" 如果设置了eol就会删除行开头时，下一行会提上来
" set backspace=indent,start
set backspace=indent,eol,start


" UltiSnips插件相关
" let g:UltiSnipsUsePythonVersion=3


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
" set t_Co=256
" 开启真彩
" set termguicolors
if has("termguicolors")
    set termguicolors
endif



" 设置当前光标与顶部和底部距离
set scrolloff=5

" 设置状态栏及标签栏
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
" colorscheme sonokai 
" 设置sonokai样式
" let g:sonokai_style = 'andromeda'
" gruvbox是真彩配色
try
	colorscheme gruvbox
	let g:gruvbox_contrast_dark='hard'
	set background=dark
catch
	colorschem evening 
endtry

" 开启透明背景
" hi Normal ctermfg=252 ctermbg=none

func! s:transparent_background()
	hi Normal guibg=NONE ctermbg=NONE
	hi NonText guibg=NONE ctermbg=NONE
endf
autocmd ColorScheme * call s:transparent_background()

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
set fileencodings=utf-8,gbk,gb18030,gb2312,ucs-bom,cp936,big5,euc-jp,euc-kr,shift-jis,latin1
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

" 高亮查找匹配
set hlsearch
" 设置输入搜索内容时实时高亮
set incsearch

" 忽略大小写
set ignorecase

" 如果有一个或以上字母时仍大小写敏感
set smartcase


" ----------------------
"		 实用设置
" ----------------------
" 当文件被改动时自动载入
set autoread

" 命令行提示
set wildmenu

"--------------------------------
"	禁止注释行回车自动添加注释
"--------------------------------
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

