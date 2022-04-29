
" ---------------------------------------
"		LanguageClient-neovim 配置
" ---------------------------------------

let s:lcnresult = commands_basic#ExistPlug('autozimu/LanguageClient-neovim')
if s:lcnresult ==? 1 

	" 为各语言指定LSP	
	let g:LanguageClient_serverCommands = {
	\ 'c':['clangd'],
	\ 'cpp':['clangd'],
    \ 'rust': ['rls'],
    \ 'python': ['pyls'],
    \ 'ruby': ['solargraph', 'stdio'],
    \ }

    
   let g:LanguageClient_hoverPreview = "Never"


endif


