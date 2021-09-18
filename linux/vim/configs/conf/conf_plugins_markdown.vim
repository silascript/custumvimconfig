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




