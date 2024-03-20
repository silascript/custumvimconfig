vim9script

# ------------------------------
#		lightline 插件
# ------------------------------


# lightline
Plug 'itchyny/lightline.vim',{'on': []}
augroup load_lightline
	autocmd!
	autocmd VimEnter * call plug#load('lightline.vim') | autocmd! load_lightline
augroup END
	
# lightline buffer
Plug 'mengelbrecht/lightline-bufferline',{'on': []}
augroup load_lightlinebuffer
	autocmd!
	autocmd VimEnter * call plug#load('lightline-bufferline') | autocmd! load_lightlinebuffer
augroup END
