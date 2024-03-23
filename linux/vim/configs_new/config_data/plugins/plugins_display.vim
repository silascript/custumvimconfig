
vim9script

# ---------------------------------
#			显示插件集
# ---------------------------------

# 插件管理器使用 Plugpac
# Pack ''

# mark 显示
Pack 'kshenoy/vim-signature'
# augroup load_vimsignature
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-signature') | autocmd! load_vimsignature
# augroup END

# 引入 statusline 插件
import "~/.vim/configs_new/config_data/plugins/plugins_statusline.vim"


# 文件类型图标插件
Pack 'ryanoasis/vim-devicons'
# augroup load_vimdevicons
	# autocmd!
	# autocmd VimEnter * call plug#load('vim-devicons') | autocmd! load_vimdevicons
# augroup END




