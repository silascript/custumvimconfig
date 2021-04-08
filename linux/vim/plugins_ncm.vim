
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
	
	" Language Server Client
	" Plug 'autozimu/LanguageClient-neovim'
	Plug 'autozimu/LanguageClient-neovim', {
		\ 'branch': 'next',
		\ 'do': 'bash install.sh'
		\ }	

	" 补全
	" ncm2
	" 前导插件
	Plug 'roxma/vim-hug-neovim-rpc'
	Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'		
	

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
" ncm2 配置
" 缓存
autocmd BufEnter * call ncm2#enable_for_buffer()
" 补全模式
au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
au User Ncm2PopupClose set completeopt=menuone
" set completeopt=noinsert,menuone,noselect
set shortmess+=c
" 弹窗延迟设置
let ncm2#popup_delay = 5

" 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" inoremap <c-c> <ESC>
"使用Tab键进行补全选择
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" 注册补全源
" 定义一个源
let g:lc_source = {
	\ 'name': 'lc',
	\ 'complete_length': 1,
	\ 'scope':['c','cpp','python'],
	\ 'mark':'LCS',
	\ 'on_complete': 'LanguageClient_NCM2OnComplete'
\ }

" let g:python_source = {
"	\ 'name': 'c',
"	\ 'complete_length': 1,
"	\ 'scope':['python'],
"	\ 'mark':'LC-Python',
"	\ 'on_complete': 'LanguageClient_NCM2OnComplete'
"\ }


" 注册源
" au User Ncm2Plugin call ncm2#register_source(g:lc_source)

" LCP 配置
let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'python': ['pyls'],
	\ 'javascript': ['typescript-language-server','stdio']
    \ }


" set completefunc=LanguageClient
let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 1
let g:LanguageClient_settingsPath='.vim/LCP_settings.json'
let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_virtualTextPrefix = ''
let g:LanguageClient_loggingFile =  expand('~/.vim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.vim/LanguageServer.log')

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>



