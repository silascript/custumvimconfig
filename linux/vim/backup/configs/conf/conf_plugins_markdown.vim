" ---------------------------------------------------------
"					Markdown插件配置
" ---------------------------------------------------------


" JamshedVesuna/vim-markdown-preview 预览插件配置
let s:jam_mdpre= commands_basic#ExistPlug('JamshedVesuna/vim-markdown-preview')
if s:jam_mdpre ==? 1
	" 指定浏览器
	let vim_markdown_preview_browser='google-chrome'
	" 使用Grip (joeyespo/grip)
	let vim_markdown_preview_github=1

endif

" lissaferreira/markdown-preview.vim 预览配置
" let s:lissaferreira_mp = commands_basic#ExistPlug('lissaferreira/markdown-preview.vim')
" if s:lissaferreira_mp ==? 1
	" let g:markdownpreview#browser = 'google-chrome'
" endif


