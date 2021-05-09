

" ------------------------------------
" 			简单整合		
" ------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	

call plug#end()

" ----------------------------------------
" 				  设置
" ----------------------------------------
" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on

" ----------------------------------
"			  插件配置	 
" ----------------------------------
" 通用常用插件配置
source ~/.config/nvim/configs/conf/conf_plugins_common.vim

" linter/ale 配置
source ~/.config/nvim/configs/conf/conf_plugins_linter.vim

" stateline 插件配置
source ~/.config/nvim/configs/conf/conf_plugins_statusline.vim



" ----------------------------------
"			  key map
" ----------------------------------




