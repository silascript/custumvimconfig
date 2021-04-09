
" ----------------------------------------
"				vim-Plug 配置
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" 光标样式切换
	Plug 'jszakmeister/vim-togglecursor'

	" 高亮光标所在词
	Plug 'itchyny/vim-cursorword'

	" 快速注释
	Plug 'scrooloose/nerdcommenter'
	
	" undo
	Plug 'mbbill/undotree'
	

	" 开始页面
	Plug 'mhinz/vim-startify'

	" sonokai配色
	Plug 'sainnhe/sonokai'
	" 真彩theme
	Plug 'morhetz/gruvbox'
	
	" snippet 库
	Plug 'honza/vim-snippets'
	
	" airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'


	" 图形界面debug插件
	" Plug 'puremourning/vimspector'
	

	" coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}	

call plug#end()


" ----------------------------------------
"				其他设置
" ----------------------------------------


" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on


" ----------------------------------
"			插件设置
" ----------------------------------

" vimspector 配置
 "let g:vimspector_enable_mappings = 'HUMAN'

" coc 通用配置
source ~/.vim/configs/conf_coc_common.vim

" coc 插件设置
let g:coc_global_extensions = ['coc-json', 'coc-git']

" 高亮插件
autocmd CursorHold * silent call CocActionAsync('highlight')

" 
" nmap <leader>cjds :CocCommand java.debug.vimspector.start<CR>



