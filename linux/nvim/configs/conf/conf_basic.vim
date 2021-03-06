
" ---------------------------------------
" 				基础配置
" ---------------------------------------

set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gb2312,ucs-bom,cp936,big5,euc-jp,euc-kr,shift-jis,latin1


" ---------------------------
" 取消自动备份及产生swp文件
" ---------------------------
set noundofile
set nobackup
set noswapfile


set number
set scrolloff=5
" 高亮当前行
set cursorline


" tab相关设置
set shiftwidth=4
set tabstop=4
set noexpandtab

" theme及配色设置
" 开启真彩色
set termguicolors


try
	colorscheme gruvbox
	" colorscheme tender
	" colorscheme one
	" colorscheme neodark
	" colorscheme NeoSolarized
	" colorscheme monokai

	" gruvbox theme config
	let g:gruvbox_contrast_dark='hard'

catch
	colorscheme evening
endtry

" 开启透明背景
func! s:transparent_background()
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText guibg=NONE ctermbg=NONE
endf
autocmd ColorScheme * call s:transparent_background()

" 高亮相关
" 忽略大小写
set ignorecase


"--------------------------------
"	禁止注释行回车自动添加注释
"--------------------------------
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " This can be done as well instead of the previous line, for setting formatoptions as you choose:
    autocmd BufEnter * setlocal formatoptions=crqn2l1j
augroup END




