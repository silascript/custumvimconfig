
" ----------------------------------------
"				插件整合
"	deoplete + LanguageClient-neovim	
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
	" 界面插件集中 statusline 插件集已加入ale
	source ~/.vim/configs/plugins/plugins_display.vim

	" deoplete + Language Client-neovim
	source ~/.vim/configs/plugins/plug_complete/plugins_deoplete_lcn.vim

	" snip
	source ~/.vim/configs/plugins/plug_snippets/plugins_snippets_ultisnips.vim

	" linter ale
	"source ~/.vim/configs/plugins/plugins_linter.vim

	" 标点符号插件
	source ~/.vim/configs/plugins/plugins_punctuation.vim

	" 目录浏览
	source ~/.vim/configs/plugins/plugins_directory.vim
	
	" 图标
	"source ~/.vim/configs/plugins/plugins_icons.vim

	" markdown
	source ~/.vim/configs/plugins/plugins_markdown.vim

	" 语法增强
	source ~/.vim/configs/plugins/plugins_syntax.vim

	" git相关
	source ~/.vim/configs/plugins/plugins_git.vim

	" 各种指示器 如缩进线
	"source ~/.vim/configs/plugins/plugins_indicator.vim

	" 格式化
	source ~/.vim/configs/plugins/plugins_format.vim

	" 搜索
	source ~/.vim/configs/plugins/plugins_search.vim

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

	" statusline 配置
	source ~/.vim/configs/conf/conf_plugins_statusline.vim

	" deoplete 配置
	source ~/.vim/configs/conf/completes/conf_deoplete_lcn.vim
	
	" ale 插件设置
	source ~/.vim/configs/conf/conf_plugins_linter.vim

" ----------------------------------
"			keymap
" ----------------------------------

" 常用插件 keymap
source ~/.vim/configs/keymaps/keymaps_plugins_basic.vim

" deoplete keymap
source ~/.vim/configs/keymaps/keymaps_deoplete_basic.vim



