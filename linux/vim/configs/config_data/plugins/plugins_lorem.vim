" ---------------------------------
"		乱数假文 插件集
" ---------------------------------

" 插件管理器使用 vim-plug
" Plug ''

" Lorem Ipsum 插件
Plug 'vim-scripts/loremipsum',{'on': []}
augroup load_loremipsum
    autocmd!
    autocmd BufEnter * call plug#load('loremipsum') | autocmd! load_loremipsum
augroup END

