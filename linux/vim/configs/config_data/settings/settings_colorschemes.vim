" ------------------------
"       配色配置
" ------------------------

" 设置配色
" 
" colorscheme tender
" colorscheme material
" colorscheme sonokai
" colorscheme gruvbox
colorscheme gruvbox-material
" colorscheme gruvbox8
" colorscheme gruvbox8_hard
" colorscheme gruvbox8_soft
" colorscheme gruvbox-baby
" colorscheme onedark
" colorscheme nord
" colorscheme iceberg
" colorscheme nord


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
    let g:material_theme_style = 'palenight'

    colorscheme material 
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

"  gruvbox 配置
let s:gruvbox_result = commands_basic#ExistPlug('morhetz/gruvbox')
if s:gruvbox_result==? 1
  " " 检测当前 colorscheme  
  if g:colors_name ==? 'gruvbox'
    " soft medium hard 三个选配 默认为 medium
    let g:gruvbox_contrast_dark = 'hard' 
    " let g:gruvbox_contrast_dark = 'soft' 

    colorscheme gruvbox
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
   
    " material mix original
    let g:gruvbox_material_palette = 'mix'

    " 行号和缩进线高对比度 low high 两种选配
    " let g:gruvbox_material_ui_contrast = 'high'
    let g:gruvbox_material_ui_contrast = 'low'

    " 粗体
    let g:gruvbox_material_enable_bold = 1
    " 允许斜体
    " let g:gruvbox_material_enable_italic = 1

    " 光标所在单词的高亮样式 'grey background' 'bold' 'underline' 'italic' 可选配
    " let g:gruvbox_material_current_word = 'italic'
    
    " 状态栏样式 default mix original 可选配
    let g:gruvbox_material_statusline_style = 'mix'
    
    colorscheme gruvbox-material
  endif

endif


" --------------------------------------------

"   配置
let s:gruvbox8_result = commands_basic#ExistPlug('lifepillar/vim-gruvbox8')
if s:gruvbox8_result==? 1
  " 检测当前 colorscheme  
  if g:colors_name ==? 'gruvbox8'
    
    " colorscheme gruvbox8
    " colorscheme gruvbox8
  endif


  if g:colors_name ==? 'gruvbox8_hard'

  endif

  if g:colors_name ==? 'gruvbox8_soft'

  endif

endif


" --------------------------------------------

"   配置
let s:gruvboxbb_result = commands_basic#ExistPlug('luisiacc/gruvbox-baby')
if s:gruvboxbb_result==? 1
  " " 检测当前 colorscheme  
  if g:colors_name ==? 'gruvbox-baby'
    " 背景 medium dark 可选 默认为 medium
    let g:gruvbox_baby_background_color = 'dark' 
    " let g:gruvbox_baby_transparent_mode = 1

    let g:gruvbox_baby_telescope_theme = 1

    colorscheme gruvbox-baby
  endif

endif



" --------------------------------------------

"   配置
let s:onedark_result = commands_basic#ExistPlug('joshdick/onedark.vim')
if s:onedark_result ==? 1
  " 检测当前 colorscheme  
  if g:colors_name ==? 'onedark'
   " let g:onedark_termcolors=256 
  endif

endif



" --------------------------------------------

"  nord-vim 配置
let s:nord_result = commands_basic#ExistPlug('arcticicestudio/nord-vim')
if s:nord_result==? 1
  " " 检测当前 colorscheme  
  if g:colors_name ==? 'nord'
    let g:nord_cursor_line_number_background = 1
    let g:nord_uniform_status_lines = 1 
    
    colorscheme nord
  endif

endif


" --------------------------------------------

"  nord.nvim 配置
let s:nordn_result = commands_basic#ExistPlug('shaunsingh/nord.nvim')
if s:nordn_result==? 1
  " " 检测当前 colorscheme  
  if g:colors_name ==? 'nord'
    
    " colorscheme nord
  endif

endif


" --------------------------------------------

"   配置
" let s:_result = commands_basic#ExistPlug('')
" if s:_result==? 1
  " " 检测当前 colorscheme  
  " if g:colors_name ==? ''
     " 
  " endif
" 
" endif




