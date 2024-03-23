vim9script

# ---------------------------------
#			git 插件集
# ---------------------------------

# 插件管理器使用 Plugpac
# Pack ''

# Git 的一些常用命令
Pack 'tpope/vim-fugitive'
# augroup load_fugitive
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-fugitive') | autocmd! load_fugitive
# augroup END

# 在 gutter 栏显示 git 状态
Pack 'airblade/vim-gitgutter'
# augroup load_gitgutter
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-gitgutter') | autocmd! load_gitgutter
# augroup END

