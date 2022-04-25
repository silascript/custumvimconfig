

" 行号
set number
set relativenumber

" 开启真彩色
if has('termguicolor')
    set termguicolors
endif


" 编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,shift-jis,latin1


"--------------------------------
"	  关闭各种自动生成文件
"--------------------------------
set noundofile
set nobackup
set noswapfile



"--------------------------------
"	当前行、匹配高亮等
"--------------------------------

" 高亮当前行
set cursorline
" 括号匹配高亮
set showmatch

" 与页面底部保持固定行数
set scrolloff=5




"--------------------------------
"			缩进
"--------------------------------
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab



"--------------------------------
"       禁止注释行回车自动添加注释
"--------------------------------
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

