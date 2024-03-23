vim9script

# ------------------------------
#		lightline 插件
# ------------------------------

# 使用 Plugpac

# lightline
Pack 'itchyny/lightline.vim'
# augroup load_lightline
	# autocmd!
	# autocmd VimEnter * call plug#load('lightline.vim') | autocmd! load_lightline
# augroup END
	
# lightline buffer
Pack 'mengelbrecht/lightline-bufferline'
# augroup load_lightlinebuffer
	# autocmd!
	# autocmd VimEnter * call plug#load('lightline-bufferline') | autocmd! load_lightlinebuffer
# augroup END
