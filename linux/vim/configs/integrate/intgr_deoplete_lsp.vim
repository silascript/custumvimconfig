
" ----------------------------------------
"				补全插件集
"			deoplete + vim-lsp	
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" 基础插件
	source ~/.vim/configs/plugins/plugins_basic.vim

	" 显示界面插件
	source ~/.vim/configs/plugins/plugins_display.vim

	" deoplete + vim-lsp 插件
	source ~/.vim/configs/plugins/plug_complete/plugins_deoplete_lsp.vim

call plug#end()

" ----------------------------------------
"				设置
" ----------------------------------------

" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on


" ----------------------------------
"			插件设置
" ----------------------------------
" 基础配置
source ~/.vim/configs/conf/conf_basic.vim

" 常用插件配置 
source ~/.vim/configs/conf/conf_plugins_common.vim

" deoplete vim-lsp 配置
source ~/.vim/configs/conf/completes/conf_deoplete_lsp.vim

" ----------------------------------
"			keymap
" ----------------------------------
" 常用插件keymap
source ~/.vim/configs/keymaps/keymaps_plugins_basic.vim

" deoplete keymap
source ~/.vim/configs/keymaps/keymaps_deoplete_basic.vim





