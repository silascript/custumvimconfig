
" ----------------------------------------
"				vim-Plug 配置
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	source ~/.vim/configs/plugins/plugins_basice.vim
	
	source ~/.vim/configs/plugins/plugins_themes.vim

	source ~/.vim/configs/plugins/plugins_display.vim

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
source ~/.vim/configs/conf/conf_coc_all.vim

" coc 插件设置
let g:coc_global_extensions = ['coc-json', 'coc-git']

" 高亮插件
autocmd CursorHold * silent call CocActionAsync('highlight')

"
" nmap <leader>cjds :CocCommand java.debug.vimspector.start<CR>


