vim9script
# ---------------------------------
#			ultisnips 插件集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''
# 需要依赖python
Plug 'SirVer/ultisnips',{'on': []}
augroup load_ultisnips
	autocmd!
	autocmd BufEnter * call plug#load('ultisnips') | autocmd! load_ultisnips
augroup END

	
# snippet 库
Plug 'honza/vim-snippets',{'on': []}
augroup load_snippets
	autocmd!
	autocmd BufEnter * call plug#load('vim-snippets') | autocmd! load_snippets
augroup END

