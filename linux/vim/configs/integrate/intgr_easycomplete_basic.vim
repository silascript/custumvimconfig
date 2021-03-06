
" ----------------------------------------
"				补全插件集
"			easycomplete 整合	
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')

	" 基础插件
	source ~/.vim/configs/plugins/plugins_basic.vim
	
	" lorem
	source ~/.vim/configs/plugins/plugins_lorem.vim

	" 显示界面
	source ~/.vim/configs/plugins/plugins_display.vim


	" snippet
	"source ~/.vim/configs/plugins/plug_snippets/plugins_snippets_snipmate.vim
	source ~/.vim/configs/plugins/plug_snippets/plugins_snippets_ultisnips.vim

	" easycomplete 
	source ~/.vim/configs/plugins/plug_complete/plugins_easycomplete_basic.vim
	
	" linter
	source ~/.vim/configs/plugins/plugins_linter.vim

	" 标点符号插件
	source ~/.vim/configs/plugins/plugins_punctuation.vim

	" 目录浏览
	source ~/.vim/configs/plugins/plugins_directory.vim
	
	" 图标
	"source ~/.vim/configs/plugins/plugins_icons.vim

	" markdown
	source ~/.vim/configs/plugins/plugins_markdown.vim
	

	" 语法
	"source ~/.vim/configs/plugins/plugins_syntax.vim

	" html	
	source ~/.vim/configs/plugins/plugins_html.vim


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
"			  插件配置	 
" ----------------------------------
" 基础配置
"source ~/.vim/configs/conf/conf_basic.vim

" 常用插件配置
source ~/.vim/configs/conf/conf_plugins_common.vim

" ale 插件设置
source ~/.vim/configs/conf/conf_plugins_linter.vim

" easycomplete 设置
source ~/.vim/configs/conf/completes/conf_easycomplete.vim

" ----------------------------------
"			  key map
" ----------------------------------
" 常用插件keymap
source ~/.vim/configs/keymaps/keymaps_plugins_basic.vim





