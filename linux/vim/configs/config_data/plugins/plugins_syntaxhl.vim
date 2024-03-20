vim9script

# ---------------------------------
#			语法高亮插件集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''
Plug 'sheerun/vim-polyglot',{'on': []}
augroup load_polyglot
	autocmd!
	autocmd BufEnter * call plug#load('vim-polyglot') | autocmd! load_polyglot
augroup END


# 颜色高亮
# Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }


# treesitter

