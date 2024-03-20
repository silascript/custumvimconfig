vim9script

# ---------------------------------
#	deoplete vim-lsp 整合插件集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''

# deoplete 基础插件
import "~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_deoplete_basic.vim"

# vim-lsp 插件
Plug 'prabirshrestha/vim-lsp',{'on': []}
augroup load_vimlsp
	autocmd!
	autocmd BufEnter * call plug#load('vim-lsp') | autocmd! load_vimlsp
augroup END

# 用于deoplete 与vim-lsp对接插件
Plug 'lighttiger2505/deoplete-vim-lsp',{'on': []}
augroup load_dvimlsp
	autocmd!
	autocmd BufEnter * call plug#load('deoplete-vim-lsp') | autocmd! load_dvimlsp
augroup END


