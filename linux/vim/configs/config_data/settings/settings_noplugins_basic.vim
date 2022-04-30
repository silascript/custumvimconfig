" -------------------------------
"			无插件配置
" -------------------------------

set nocompatible

" 退格键设置
" eol 如果删除到第一个字符，当前行就会向上提
set backspace=indent,eol,start


" 禁止生成各种文件
set noundofile
set nobackup
set noswapfile

" 行号
set number
" 开启相对行号
set relativenumber

" 在底部显示命令
set showcmd

" 补全时候选菜单显示在命令行上方
set wildmenu

" 开启真彩色
if has('termguicolors')
	set termguicolors
endif


" 设置编码
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gb2312,ucs-bom,cp936,big5,euc-jp


" 让光标闪烁
" 这种设置能保持 neovim 在 normal 模式和 insert 模式呈现不同的光标样式的特性
" 而两种光标样式都能保持一致的闪烁
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  " \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  " \,sm:block-blinkwait175-blinkoff150-blinkon175


" 高亮当前行
set cursorline
" 状态栏
set laststatus=2
set ruler

" 高亮匹配
set showmatch

" 与底部保持固定行距
set scrolloff=5


" 缩进
set shiftwidth=4
set tabstop=4
set softtabstop=4
" 不要展开tab 为空格
set noexpandtab

" 搜索
set hlsearch
set incsearch

set ignorecase
set smartcase

" 语法高亮
syntax on
" 文件类型侦测
filetype on
filetype plugin on


"--------------------------------
"       禁止注释行回车自动添加注释
"--------------------------------
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


