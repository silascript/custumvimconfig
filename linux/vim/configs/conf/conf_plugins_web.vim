" ---------------------------------------------------------
"					html 相关插件配置
" ---------------------------------------------------------


" JamshedVesuna/vim-markdown-preview 预览插件配置
let s:emmemt_mdpre = commands_basic#ExistPlug('mattn/emmet-vim')
if s:emmemt_mdpre ==? 1
	let g:user_emmet_settings = {
		\  'html': {
		\    'snippets': {
		\      'html5:vp': "<!DOCTYPE html>\n"
		\              ."<html lang=\"${lang}\">\n"
		\              ."<head>\n"
		\              ."\t<meta charset=\"${charset}\">\n"
		\              ."\t<title></title>\n"
		\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
		\              ."</head>\n"
		\              ."<body>\n\t${child}|\n</body>\n"
		\              .'</html>',
		\    },
		\  },
	\}	
endif




