vim9script
# ---------------------------------
#			ultisnips 插件集
# ---------------------------------

# 插件管理器使用 Plugpac
# Pack ''
# 需要依赖python
Pack 'SirVer/ultisnips'
# augroup load_ultisnips
	# autocmd!
	# autocmd BufEnter * call plug#load('ultisnips') | autocmd! load_ultisnips
# augroup END

	
# snippet 库
Pack 'honza/vim-snippets'
# augroup load_snippets
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-snippets') | autocmd! load_snippets
# augroup END

