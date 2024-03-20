vim9script

# ---------------------------------
#			git 插件集
# ---------------------------------

# 插件管理器使用 vim-plug
# Plug ''

# Git 的一些常用命令
Plug 'tpope/vim-fugitive',{'on': []}
augroup load_fugitive
	autocmd!
	autocmd BufEnter * call plug#load('vim-fugitive') | autocmd! load_fugitive
augroup END

# 在 gutter 栏显示 git 状态
Plug 'airblade/vim-gitgutter',{'on': []}
augroup load_gitgutter
	autocmd!
	autocmd BufEnter * call plug#load('vim-gitgutter') | autocmd! load_gitgutter
augroup END

