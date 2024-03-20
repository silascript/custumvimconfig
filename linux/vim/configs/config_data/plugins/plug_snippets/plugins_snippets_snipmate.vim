vim9script

# ---------------------------------
#			snipmate 插件集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''

# snipmate 
# vimL写的不需要外部依赖
# 不过需要其他两个插件
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate',{'on': []}
augroup load_vimsnipmate
	autocmd!
	autocmd BufEnter * call plug#load('vim-snipmate') | autocmd! load_vimsnipmate
augroup END

# snippet 库
Plug 'honza/vim-snippets',{'on': []}
augroup load_vimsnippets
	autocmd!
	autocmd BufEnter * call plug#load('vim-snippets') | autocmd! load_vimsnippets
augroup END
