
" ----------------------------------------
"				补全插件集
"			asyncomplete + vim-lsp	
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	
	" 基础插件
	source ~/.vim/configs/plugins/plugins_basic.vim

	" 显示界面插件
	source ~/.vim/configs/plugins/plugins_display.vim
	

	" snippets
	source ~/.vim/configs/plugins/plugins_snippets.vim

	" asyncomplete + vim-lsp 插件
	source ~/.vim/configs/plugins/plug_complete/plugins_asyncomplete_lsp.vim
	
	" linter
	source ~/.vim/configs/plugins/plugins_linter.vim

	" 标点符号插件
	source ~/.vim/configs/plugins/plugins_punctuation.vim

	" 目录浏览
	source ~/.vim/configs/plugins/plugins_directory.vim

	" 图标
	source ~/.vim/configs/plugins/plugins_icons.vim
	
	" markdown
	source ~/.vim/configs/plugins/plugins_markdown.vim

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

" asyncomplete vim-lsp 配置
source ~/.vim/configs/conf/completes/conf_asyncomplete_lsp.vim

" ale 插件设置
source ~/.vim/configs/conf/conf_plugins_linter.vim


" ----------------------------------
"			keymap
" ----------------------------------
" 常用插件keymap
source ~/.vim/configs/keymaps/keymaps_plugins_basic.vim

" asyncomplete keymap
source ~/.vim/configs/keymaps/keymaps_asyncomplete_basic.vim




