vim9script

# ---------------------------------
#			标点符号插件集
# ---------------------------------



# 插件管理器使用 vim-plug

# Plug ''

# vim 8 版本 成对符号自动补全
# Plug 'jiangmiao/auto-pairs'
# vim 9 版的成对符号补全
Plug 'Eliot00/auto-pairs',{'on': []}
augroup load_autopairs
    autocmd!
    # autocmd BufNewFile,BufReadPre,BufEnter * call plug#load('auto-pairs') | autocmd! load_autopairs
    autocmd BufEnter * call plug#load('auto-pairs') | autocmd! load_autopairs
augroup END

# 添加分号
# cosco依赖vim-repeat插件
Plug 'tpope/vim-repeat'
Plug 'lfilho/cosco.vim',{'on': []}
augroup load_cosco
    autocmd!
    autocmd BufEnter * call plug#load('cosco.vim') | autocmd! load_cosco 
augroup END

