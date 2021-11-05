" ---------------------------------------------------------
"					html 相关插件配置
" ---------------------------------------------------------


" emmet 插件配置
let s:emmet_vim_exis = commands_basic#ExistPlug('mattn/emmet-vim')
if s:emmet_vim_exis ==? 1
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




