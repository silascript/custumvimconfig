
" ----------------------------------------
"				补全插件集
"			deoplete + vim-lsp	
" ----------------------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.local/share/nvim/site/plugged')
	
	" 基础插件
	source ~/.config/nvim/configs/plugins/plugins_basic.vim

	" 显示界面插件
	" 界面插件集中 statusline 插件集已加入ale
	source ~/.config/nvim/configs/plugins/plugins_display.vim

	" deoplete + vim-lsp 插件
	source ~/.config/nvim/configs/plugins/plug_complete/plugins_deoplete_lsp.vim
	" snippet
	"source ~/.config/nvim/configs/plugins/plug_snippets/plugins_snippets_snipmate.vim
	source ~/.config/nvim/configs/plugins/plug_snippets/plugins_snippets_ultisnips.vim
	
	" linter ale
	"source ~/.config/nvim/configs/plugins/plugins_linter.vim

	" 标点符号插件
	source ~/.config/nvim/configs/plugins/plugins_punctuation.vim

	" 目录浏览
	source ~/.config/nvim/configs/plugins/plugins_directory.vim

	" 图标
	"source ~/.config/nvim/configs/plugins/plugins_icons.vim
	
	" markdown
	source ~/.config/nvim/configs/plugins/plugins_markdown.vim

	" html
	source ~/.config/nvim/configs/plugins/plugins_html.vim

	" 语法增强
	source ~/.config/nvim/configs/plugins/plugins_syntax.vim

	" git相关
	source ~/.config/nvim/configs/plugins/plugins_git.vim

	" 格式化
	source ~/.config/nvim/configs/plugins/plugins_format.vim

	" 搜索
	source ~/.config/nvim/configs/plugins/plugins_search.vim


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
"source ~/.config/nvim/configs/conf/conf_basic.vim

" 常用插件配置 
source ~/.config/nvim/configs/conf/conf_plugins_common.vim
" statusline 配置
source ~/.config/nvim/configs/conf/conf_plugins_statusline.vim

" deoplete vim-lsp 配置
source ~/.config/nvim/configs/conf/completes/conf_deoplete_lsp.vim

" ale 插件设置
source ~/.config/nvim/configs/conf/conf_plugins_linter.vim


" ----------------------------------
"			keymap
" ----------------------------------
" 常用插件keymap
source ~/.config/nvim/configs/keymaps/keymaps_plugins_basic.vim

" deoplete keymap
source ~/.config/nvim/configs/keymaps/keymaps_deoplete_basic.vim





