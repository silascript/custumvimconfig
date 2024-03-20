vim9script

# ---------------------------------
#		deoplete 插件基础集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''

if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim' # ,{'on': []}
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif

# augroup load_deoplete
	# autocmd!
	# autocmd VimEnter * call plug#load('deoplete.nvim') | autocmd! load_deoplete
# augroup END



