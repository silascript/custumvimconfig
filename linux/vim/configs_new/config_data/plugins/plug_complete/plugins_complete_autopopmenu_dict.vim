vim9script
# -------------------------------------
#	vim-auto-popmenu + vim-dict 插件集
# -------------------------------------

# 插件管理器使用 Plugpac
# Pack ''

# Pack 'skywind3000/vim-auto-popmenu'

# 引入vim-auto-popmenu 基础插件
import "~/.vim/configs_new/config_data/plugins/plug_complete/plugins_complete_autopopmenu_basic.vim"

# 字典
Pack 'skywind3000/vim-dict'
# augroup load_vimdict
    # autocmd!
    # autocmd BufEnter * call plug#load('vim-dict') | autocmd! load_vimdict 
# augroup END

