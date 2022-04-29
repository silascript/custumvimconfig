
" ---------------------------
"		vim-Plug 配置
" ---------------------------

" 关闭缩进及语法高亮
filetype off
"syntax off

call plug#begin('~/.vim/plugged')
	

	" 真彩theme
	Plug 'morhetz/gruvbox'
	
	" 自动括号
	Plug 'jiangmiao/auto-pairs'
	
	" 光标样式切换
	Plug 'jszakmeister/vim-togglecursor'
	
	" 补全
	" Plug 'prabirshrestha/asyncomplete.vim'
	" Plug 'prabirshrestha/asyncomplete-lsp.vim'	
	
	if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
		let g:deoplete#enable_at_startup = 1

	" lsp
	" Plug 'prabirshrestha/vim-lsp'
	" Plug 'mattn/vim-lsp-settings'
	
	Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }	

call plug#end()

" ----------------------------------------
"				其他设置
" ----------------------------------------

" 开启文件类型
syntax on
filetype on
filetype plugin on
filetype indent on


" ----------------------------------
"			插件设置
" ----------------------------------
"
" 启用deoplete 
let g:deoplete#enable_at_startup = 1


" 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"使用Tab键进行补全
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" lsp
" let g:lsp_settings = {
" \  'clangd': {'cmd': ['clangd']},
" \  'efm-langserver': {'disabled': v:false}
" \}

"if executable('clangd')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'clangd',
"        \ 'cmd': {server_info->['clangd']},
"        \ 'allowlist': ['c','cpp'],
"        \ })
"endif

"if executable('pyls')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'pyls',
"        \ 'cmd': {server_info->['pyls']},
"        \ 'whitelist': ['python'],
"        \ })
"endif

" LCP
let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'python': ['pyls']
    \ }

let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_virtualTextPrefix = ''
let g:LanguageClient_loggingFile =  expand('~/.local/share/nvim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>



