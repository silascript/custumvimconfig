" ------------------------
"       基础插件配置
" ------------------------

" nere commenter 插件配置
let s:nerdcommc_result = commands_basic#ExistPlug('preservim/nerdcommenter')
if s:nerdcommc_result ==? 1
 
  " 注释时注释符号后插入一个空格
  let g:NERDSpaceDelims =1
  
  " 注释前插入空行
  let g:NERDCommentEmptyLines = 1

  " 自定义 c 语言注释
  let g:NERDCustomDelimiters ={'c':{'left':'//'}}

endif


" --------------------------------------------

" highlightedyank 插件配置
let s:hly_result = commands_basic#ExistPlug('machakann/vim-highlightedyank')

if s:hly_result ==? 1
  " 高亮时长
  let g:highlightedyank_highlight_duration = 1500
endif


" --------------------------------------------

" startify 插件配置
let s:startify_result = commands_basic#ExistPlug('mhinz/vim-startify')
if s:startify_result ==? 1
	let g:startify_files_number = 8

    
    " 使用 figlet 来生成文字图案
	let g:startify_custom_header =
       \ startify#pad(split(system('figlet -f "ANSI Shadow" Hello VIM'), '\n'))
endif


" --------------------------------------------

" vim-togglecursor 插件配置
let s:togglecursor_result = commands_basic#ExistPlug('jszakmeister/vim-togglecursor')
if s:togglecursor_result ==? 1
	" let g:togglecursor_insert = "line"
	" let g:togglecursor_leave = "line"
endif


" --------------------------------------------

" cosco 插件配置
source ~/.vim/configs/config_data/settings/settings_plugins_punctuation.vim


" --------------------------------------------

" let s:_result = commands_basic#ExistPlug('')
" if s:_result ==? 1
" 
" endif


