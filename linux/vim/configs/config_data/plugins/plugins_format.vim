vim9script

# ---------------------------------
#		格式化插件集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''

# 使用 google 的格式化插件
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt' # ,{'on': []}
# Also add Glaive, which is used to configure codefmt's maktaba flags. See
# `:help :Glaive` for usage.
Plug 'google/vim-glaive'
# augroup load_codefmt
    # autocmd!
    # autocmd VimEnter * call plug#load('vim-codefmt') | autocmd! load_codefmt 
# augroup END

# --------------------------


