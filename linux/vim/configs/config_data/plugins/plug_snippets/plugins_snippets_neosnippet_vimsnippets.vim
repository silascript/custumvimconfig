" -----------------------------------
"	neosnippet + vim-snippets 插件集
" -----------------------------------

" 插件管理器使用 vim-plug
" Plug ''
" Plugin 'Shougo/deoplete.nvim'
" if !has('nvim')
  " Plugin 'roxma/nvim-yarp'
  " Plugin 'roxma/vim-hug-neovim-rpc'
" endif

let g:neosnippet#disable_runtime_snippets = {'_' : 1}

Plug 'Shougo/neosnippet.vim'
" vim-snippets 仓库
Plug 'honza/vim-snippets'	

