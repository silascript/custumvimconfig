

set noundofile
set nobackup
set noswapfile


set number
set cursorline


" if has('python3')
	" set pyx=3
" elseif has('python')
	" set pyx=3
" endif


" 开启真彩色
set termguicolors


set shiftwidth=4
set tabstop=4
" set softtabstop=4
set noexpandtab


set fileencodings=utf-8,gb18030,gb2312,cp936,big5,ucs-bom,euc-jp,euc-kr
set scrolloff=5


" Plug
call plug#begin('./AppData/Local/nvim-data/site/plugged')
	
	" 自动成对标点符号
	Plug 'jiangmiao/auto-pairs'
	" 注释
	Plug 'preservim/nerdcommenter'
	
	" 环绕符号
	Plug 'tpope/vim-surround'
	
	" 快速选择括号中的元素
	Plug 'wellle/targets.vim'
	" 元素快速交换
	Plug 'tommcdo/vim-exchange'

	" motion
	Plug 'easymotion/vim-easymotion'

	" 语法增强
	Plug 'sheerun/vim-polyglot'
	
	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" theme
	Plug 'morhetz/gruvbox'


	" 文件类型图标
	Plug 'ryanoasis/vim-devicons'

	" NERDTree
	Plug 'preservim/nerdtree'


	" snippet相关
	" snippet调用引擎
	" ultisnips需要依赖python,而且是特定版本，太恶心
	" Plug 'SirVer/ultisnips'
	"
	 "snipmate 引擎	
	 Plug 'MarcWeber/vim-addon-mw-utils'
	 Plug 'tomtom/tlib_vim'
	 Plug 'garbas/vim-snipmate'
	
	" snippet仓库
	Plug 'honza/vim-snippets'

	
	" lorem
	Plug 'vim-scripts/loremipsum'

call plug#end()


" nerdcommenter config
" 注释插入空格
let g:NERDSpaceDelims=1

" 注释插入空行
let g:NERDCommentEmptyLines=1



" theme

try
	colorscheme gruvbox

	" gruvbox theme config
	let g:gruvbox_contrast_dark='hard'

catch
	colorscheme evening
endtry


" airline config
let g:airline_extensions=['branch','tabline']

let g:airline#extensions#tabline#formatter='unique_tail_improved'

" 开启powerline font
" 如果terminal的字体是nerd的字体就会显示箭头
let g:airline_powerline_fonts=1

" airline theme
" let g:airline_theme='gruvbox'
let g:airline_theme='wombat'


" nerdtree config
map <leader>nt  :NERDTreeToggle <CR>



" SnipMate设置
let g:snipMate = {'snippet_version' : 1}



