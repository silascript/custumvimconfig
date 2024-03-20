vim9script

# ---------------------------------
#		deoplete vim-lsc 插件集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''

# deoplete 插件
import "~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_deoplete_basic.vim"


# vim-lsc 插件
Plug 'natebosch/vim-lsc',{'on': []}
augroup load_vimlsc
	autocmd!
	autocmd BufEnter * call plug#load('vim-lsc') | autocmd! load_vimlsc
augroup END

# deoplete 与 vim-lsc 接口插件
Plug 'hrsh7th/deoplete-vim-lsc',{'on': []}
augroup load_dvimlsc
	autocmd!
	autocmd BufEnter * call plug#load('deoplete-vim-lsc') | autocmd! load_dvimlsc
augroup END



