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

" 


" --------------------------------------------
