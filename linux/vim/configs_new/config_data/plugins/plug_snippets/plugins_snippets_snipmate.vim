vim9script

# ---------------------------------
#			snipmate 插件集
# ---------------------------------

# 插件管理器使用 Plugpac
# Pack ''

# snipmate 
# vimL写的不需要外部依赖
# 不过需要其他两个插件
Pack 'MarcWeber/vim-addon-mw-utils'
Pack 'tomtom/tlib_vim'
Pack 'garbas/vim-snipmate'
# augroup load_vimsnipmate
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-snipmate') | autocmd! load_vimsnipmate
# augroup END

# snippet 库
Pack 'honza/vim-snippets'
# augroup load_vimsnippets
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-snippets') | autocmd! load_vimsnippets
# augroup END

