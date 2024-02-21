

" ------------------------------------
" 			简单整合		
" ------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.local/share/nvim/site/plugged')
	
	" 引入基础插件集
	source ~/.config/nvim/configs/plugins/plugins_basic.vim	

	" 图标
	" source ~/.config/nvim/configs/plugins/plugins_icons.vim
	
	" 显示插件集
	" 包括theme 和 statusline图标
	source ~/.config/nvim/configs/plugins/plugins_display.vim

	" statusline ale
	" source ~/.config/nvim/configs/plugins/plug_statusline/plugins_statusline_lightline_ale.vim
	
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
" 
" source ~/.config/nvim/configs/keymaps/

" 基础插件keymap
source ~/.config/nvim/configs/keymaps/keymaps_plugins_basic.vim



