vim9script

# -----------------------------------------
#	deoplete vim-lsp snipmate 插件整合集
# -----------------------------------------

# 插件管理器使用 vim-plug
# Plug ''

# deoplete vim-lsp 整合插件
import "~/.vim/configs/config_data/plugins/plug_complete/plugins_complete_deoplete_lsp.vim"

# snipmate 插件
import "~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim"

# deoplete 与 snipmate 接口插件
Plug 'dcampos/deoplete-snipmate',{'on': []}
augroup load_dsnipmate
	autocmd!
	autocmd BufEnter * call plug#load('deoplete-snipmate') | autocmd! load_dsnipmate
augroup END

