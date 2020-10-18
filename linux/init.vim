

set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gb2312,ucs-bom,cp936,big5,euc-jp,euc-kr,shift-jis,latin1

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



" 高亮相关
" 忽略大小写
set ignorecase


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

	" 自动成对标点符号
	Plug 'jiangmiao/auto-pairs'

	" 环绕符号
	Plug 'tpope/vim-surround'

	" 语法高亮增强
	Plug 'sheerun/vim-polyglot'
	
	" 高亮当前单词
	Plug 'itchyny/vim-cursorword'

	" nerdtree
	Plug 'preservim/nerdtree'
	
	" motion
	Plug 'easymotion/vim-easymotion'

	" undo查看
	Plug 'mbbill/undotree'


	" git相关
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'


	" lorem
	Plug 'vim-scripts/loremipsum'

	" html相关
	Plug 'mattn/emmet-vim'

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



" ---------------------------
"		NerdTree设置
" ---------------------------
" 映射快捷键
map <leader>nt :NERDTreeToggle <CR>


" -----------------------------
"		UndoTree设置
" -----------------------------
"映射快捷键
nnoremap <leader>udt :UndotreeToggle <CR>
" 设置undo文件的存放目录
set undofile
set undodir=~/.local/share/nvim/.undodir




" -----------------------
"		GitGutter设置
" -----------------------
" 开启gitgutter
let g:gitgutter_enabled = 1







