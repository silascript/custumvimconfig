" ---------------------------------
"	ncm2 与 snipmate 整合插件集
" ---------------------------------

" 插件管理器使用 vim-plug
" Plug ''

" ncm2 框架
Plug 'ncm2/ncm2'

" nvim-yarp  需要三个条件 
" 1. vim-hug-neovim-rpc 
" 2. 系统装有python
" 3. pynvim (pip install pynvim)
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'roxma/nvim-yarp'



" 补充功能
" buff 补全
Plug 'ncm2/ncm2-bufword'

" 路径补全
Plug 'ncm2/ncm2-path'


" ncm snipmate 接口
Plug 'ncm2/ncm2-snipmate'

" snipmate 插件
source ~/.vim/configs/config_data/plugins/plug_snippets/plugins_snippets_snipmate.vim


