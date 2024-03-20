vim9script

# ---------------------------------
#	deoplete snipmate 插件整合集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''

# deoplete 基础插件
import "~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_deoplete_basic.vim"

# snipmate 插件
import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim"

# deoplete 与 snipmate 接口插件
Plug 'dcampos/deoplete-snipmate',{'on': []}
augroup load_dsnipmate
	autocmd!
	autocmd BufEnter * call plug#load('deoplete-snipmate') | autocmd! load_dsnipmate
augroup END


