" ------------------------
"       配色配置
" ------------------------

" 设置配色
" 
" colorscheme tender
" colorscheme material
" let g:sonokai_cursor = 'green'
" let g:sonokai_style = 'maia' 
" let g:sonokai_style = 'andromeda'
" colorscheme sonokai
colorscheme gruvbox-material


" --------------------------------------------
"             各配色配置
" --------------------------------------------

"  tender配置
" let s:tender_result = commands_basic#ExistPlug('jacoborus/tender.vim')
" if s:tender_result==? 1
  " " 检测当前 colorscheme  
  " if g:colors_name ==? 'tender'
     " 
  " endif
" 
" endif


" --------------------------------------------

"   设置
let s:material_result = commands_basic#ExistPlug('kaicataldo/material.vim')
if s:material_result ==? 1
  " " 检测当前 colorscheme  
  if g:colors_name ==? 'material'
    
   " echom 'hello material!' 

    " 允许斜体
    let g:material_terminal_italics = 1
    " 使用 style 有多个值可选配
    " default palenight ocean lighter darker default-community palenight-community ocean-community lighter-community darker-community
    let g:material_theme_style = 'lighter'

  endif

endif


" --------------------------------------------

"  sonokai 设置
let s:sonokai_result = commands_basic#ExistPlug('sainnhe/sonokai')
if s:sonokai_result==? 1
  " " 检测当前 colorscheme  
  if g:colors_name ==? 'sonokai'
    " colorscheme evening
    " style 
    " default atlantis andromeda shusia maia espresso
    let g:sonokai_style = 'maia' 

    colorscheme sonokai
  endif

endif


" --------------------------------------------

"  gruvbox-material 设置
let s:gruvboxm_result = commands_basic#ExistPlug('sainnhe/gruvbox-material')
if s:gruvboxm_result ==? 1
  " " 检测当前 colorscheme  
  if g:colors_name ==? 'gruvbox-material'
    
    " 设置背景 有 hard medium soft 可选配
    let g:gruvbox_material_background = 'hard'
    " let g:gruvbox_material_background = 'soft'
    " let g:gruvbox_material_background = 'medium'
    " let g:gruvbox_material_better_performance = 1
    
    " 行号和缩进线高对比度 low high 两种选配
    " let g:gruvbox_material_ui_contrast = 'high'
    let g:gruvbox_material_ui_contrast = 'low'

    " 粗体
    let g:gruvbox_material_enable_bold = 1
    " 允许斜体
    " let g:gruvbox_material_enable_italic = 1

    " 光标所在单词的高亮样式 'grey background' 'bold' 'underline' 'italic' 可选配
    let g:gruvbox_material_current_word = 'italic'
    
    " 状态栏样式 default mix original 可选配
    let g:gruvbox_material_statusline_style = 'mix'
    
    colorscheme gruvbox-material
  endif

endif


" --------------------------------------------

"   设置


