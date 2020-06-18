

set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gb2312,ucs-bom,cp936,big5,euc-jp,euc-kr,shift-jis,latin1


set number
set scrolloff=5

set cursorline


set noexpandtab

" tab相关设置
set shiftwidth=4
set tabstop=4

" theme及配色设置
" 开启真彩色
set termguicolors

colorscheme gruvbox
" colorscheme tender
" colorscheme one
" colorscheme neodark
" colorscheme NeoSolarized
" colorscheme monokai

" gruvbox theme config
let g:gruvbox_contrast_dark='hard'



" vim Plug
call plug#begin('~/.local/share/nvim/site/plugged')
"call plug#begin('~/.local/share/nvim/plugged')

	" 注释插件
	Plug 'preservim/nerdcommenter'

	" theme
	" 支持真彩色的theme
	Plug 'morhetz/gruvbox'
	Plug 'jacoborus/tender.vim'
	Plug 'rakr/vim-one'
	Plug 'KeitaNakamura/neodark.vim'
	Plug 'iCyMind/NeoSolarized'
	Plug 'crusoexia/vim-monokai'
	
	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	" 文件类型图标
	Plug 'ryanoasis/vim-devicons'



call plug#end()


" ===================
" 		plug config
" ===================

" nerdcommentor config
" 注释插入空格
let g:NERDSpaceDelims = 1

" 注释插件空行
let g:NERDCommentEmptyLines = 1


" ==================
" 	airline config
" ==================
let g:airline_extensions = ['branch','tabline']

" buffer文件名及路径显示格式
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" 开启powerline font
let g:airline_powerline_fonts=1

" 设置airline的theme
" let g:airline_theme='dark'
let g:airline_theme='wombat'
" let g:airline_theme='one'
" let g:airline_theme='onedark'
" let g:airline_theme='gruvbox'






