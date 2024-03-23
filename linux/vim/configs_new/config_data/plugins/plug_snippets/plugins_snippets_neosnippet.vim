vim9script

# ---------------------------------
#			neosnippet 插件集
# ---------------------------------

# 插件管理器使用 Plugpac
# Pack ''
# Plugin 'Shougo/deoplete.nvim'
# if !has('nvim')
  # Plugin 'roxma/nvim-yarp'
  # Plugin 'roxma/vim-hug-neovim-rpc'
# endif

Pack 'Shougo/neosnippet.vim'
# snippets 仓库 这是neosnippet 官方默认的snippets 仓库
Pack 'Shougo/neosnippet-snippets'

# augroup load_neosnippet
	# autocmd!
	# autocmd BufEnter * call plug#load('neosnippet') | autocmd! load_neosnippet
# augroup END

# augroup load_nsnippets
	# autocmd!
	# autocmd BufEnter * call plug#load('neosnippet-snippets') | autocmd! load_nsnippets
# augroup END


