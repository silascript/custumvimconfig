vim9script

# -----------------------------------------
#   asyncomplete  ultisnips 整合插件集
# -----------------------------------------

# 插件管理器使用 Plugpac
# Pack ''

# asyncomplete 基础插件集
import "~/.vim/configs_new/config_data/plugins/plug_complete/plugins_complete_asyncomplete_basic.vim"


# ultisnips 插件集
import "~/.vim/configs_new/config_data/plugins/plug_snippets/plugins_snippets_ultisnips.vim"

# asyncomplete的ultisnips桥接插件
Pack 'prabirshrestha/asyncomplete-ultisnips.vim'

