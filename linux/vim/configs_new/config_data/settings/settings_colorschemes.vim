vim9script

# -----------------------------------------------------------------------
#                         配色配置
# -----------------------------------------------------------------------

# 导入通用脚本
import "~/.vim/configs_new/commands/commands_basic.vim"
# 导入 colorscheme 工具脚本
import "~/.vim/configs_new/commands/commands_colorscheme.vim"

# -----------------------------------------------------------------------

# 使用深色系配色
set background=dark

# 开启真彩色
if has('termguicolors')
	set termguicolors
endif

# 判断 color_name 存在不存在
# 不存在证明未设置 colorscheme
# 那就设置个 vim 自带的 colorscheme
if !exists('g:colors_name')
      # 获取自带配色名称列表
      var colorname_list = commands_colorscheme.FindDefaultColorSchemeNameList()
      if !empty(colorname_list)
        # 使用列表方式设置
        exec "colorscheme " .. colorname_list[16]
      else
         colorscheme default
      endif
endif

# -----------------------------------------------------------------------
# 设置配色

# base16默认配色
# colorscheme base16-default-dark 
# colorscheme tokyonight 
# colorscheme everforest
# colorscheme tender
# colorscheme material
# colorscheme sonokai
# colorscheme gruvbox
# colorscheme gruvbox-material
# colorscheme gruvbox8
# colorscheme gruvbox8_hard
# colorscheme gruvbox8_soft
# colorscheme gruvbox-baby
# colorscheme onedark
# colorscheme iceberg
colorscheme nord

# -----------------------------------------------------------------------
#                         各配色配置
# -----------------------------------------------------------------------

# -----------------------------------------------------------------------
# tinted-theming/base16-vim
var base16_result = commands_basic.ExistPlug('tinted-theming/base16-vim')
if base16_result == 1
  try
    # if g:colors_name ==? 'base16-default-dark'
    # 检测当前 colorscheme 的名称是不是以 base-16-开头
    if match(g:colors_name, 'base16-') > -1
      # echom '设置了base16'
      # base16_colorspace = 256
      # 设配色
      # colorscheme base16-ayu-mirage
      # colorscheme base16-catppuccin-macchiato
      # 获取 base16 所有配色的名称
      var base16_color_list = commands_colorscheme.FindColorSchemeNameListByPath("~/.vim/pack/minpac/start/base16-vim/colors")
      if !empty(base16_color_list)
        # 设置配色
        # 根据索引值设置
        # exec "colorscheme " .. base16_color_list[25]
        exec "colorscheme " .. base16_color_list[27]
      endif
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry
endif

# -----------------------------------------------------------------------
# timmajani/tokyonightnoir-vim
var tokyonightnoir_result = commands_basic.ExistPlug('timmajani/tokyonightnoir-vim')
if tokyonightnoir_result == 1
  try
    if g:colors_name ==? "tokyonight"
      # available: night, storm
      # g:tokyonight_style = 'night' 
      g:tokyonight_style = "storm" 
      g:tokyonight_enable_italic = 1
      # 下拉菜单选中项的背影颜色
      # green red blue 默认是green
      g:tokyonight_menu_selection_background = "blue"
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif

# -----------------------------------------------------------------------

# everforest
var everforest_result = commands_basic.ExistPlug('sainnhe/everforest')
if everforest_result == 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'everforest'
      # Available values: 'hard', 'medium'(default), 'soft'
      # g:everforest_background = 'soft'
      g:everforest_background = 'medium'
      # For better performance
      # g:everforest_better_performance = 1
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry
endif


# -----------------------------------------------------------------------

# material 设置
# var material_result = commands_basic#ExistPlug('kaicataldo/material.vim')
var material_result = commands_basic.ExistPlug('kaicataldo/material.vim')
if material_result == 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'material'
      
      # 允许斜体
      g:material_terminal_italics = 1
      # 使用 style 有多个值可选配
      # default palenight ocean lighter darker default-community palenight-community ocean-community lighter-community darker-community
      g:material_theme_style = 'palenight'

      colorscheme material 
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#  sonokai 设置
# var sonokai_result = commands_basic#ExistPlug('sainnhe/sonokai')
var sonokai_result = commands_basic.ExistPlug('sainnhe/sonokai')
if sonokai_result == 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'sonokai'
      # colorscheme evening
      # style 
      # default atlantis andromeda shusia maia espresso
      g:sonokai_style = 'maia' 

      colorscheme sonokai
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#  gruvbox 配置
# var gruvbox_result = commands_basic#ExistPlug('morhetz/gruvbox')
var gruvbox_result = commands_basic.ExistPlug('morhetz/gruvbox')
if gruvbox_result ==? 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'gruvbox'
      # soft medium hard 三个选配 默认为 medium
      g:gruvbox_contrast_dark = 'hard' 
      # let g:gruvbox_contrast_dark = 'soft' 

      colorscheme gruvbox
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#  gruvbox-material 设置
# var gruvboxm_result = commands_basic#ExistPlug('sainnhe/gruvbox-material')
var gruvboxm_result = commands_basic.ExistPlug('sainnhe/gruvbox-material')
if gruvboxm_result ==? 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'gruvbox-material'
      
      # 设置背景 有 hard medium soft 可选配
      g:gruvbox_material_background = 'hard'
      # let g:gruvbox_material_background = 'soft'
      # let g:gruvbox_material_background = 'medium'
      # let g:gruvbox_material_better_performance = 1
     
      # material mix original
      g:gruvbox_material_palette = 'mix'

      # 行号和缩进线高对比度 low high 两种选配
      # let g:gruvbox_material_ui_contrast = 'high'
      g:gruvbox_material_ui_contrast = 'low'

      # 粗体
      g:gruvbox_material_enable_bold = 1
      # 允许斜体
      # let g:gruvbox_material_enable_italic = 1

      # 光标所在单词的高亮样式 'grey background' 'bold' 'underline' 'italic' 可选配
      # let g:gruvbox_material_current_word = 'italic'
      
      # 状态栏样式 default mix original 可选配
      g:gruvbox_material_statusline_style = 'mix'
      
      colorscheme gruvbox-material
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#   配置
# var gruvbox8_result = commands_basic#ExistPlug('lifepillar/vim-gruvbox8')
var gruvbox8_result = commands_basic.ExistPlug('lifepillar/vim-gruvbox8')
if gruvbox8_result ==? 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'gruvbox8'
      
      # colorscheme gruvbox8
      # colorscheme gruvbox8
    endif


    if g:colors_name ==? 'gruvbox8_hard'

    endif

    if g:colors_name ==? 'gruvbox8_soft'

    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#   配置
# var gruvboxbb_result = commands_basic#ExistPlug('luisiacc/gruvbox-baby')
var gruvboxbb_result = commands_basic.ExistPlug('luisiacc/gruvbox-baby')
if gruvboxbb_result == 1

  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'gruvbox-baby'
      # 背景 medium dark 可选 默认为 medium
      g:gruvbox_baby_background_color = 'dark' 
      # g:gruvbox_baby_transparent_mode = 1

      g:gruvbox_baby_telescope_theme = 1

      colorscheme gruvbox-baby
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#   配置
# var onedark_result = commands_basic#ExistPlug('joshdick/onedark.vim')
var onedark_result = commands_basic.ExistPlug('joshdick/onedark.vim')
if onedark_result == 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'onedark'
      # g:onedark_termcolors=256 
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#  nord-vim 配置
# var nord_result = commands_basic#ExistPlug('arcticicestudio/nord-vim')
var nord_result = commands_basic.ExistPlug('casonadams/nord.vim')
if nord_result == 1
  try
    # 检测当前 colorscheme  
    if g:colors_name ==? 'nord'
      # g:nord_cursor_line_number_background = 1
      # g:nord_uniform_status_lines = 1 
      
      # colorscheme nord
    endif
  catch
    # 出错就设置成vim自带配色
    colorscheme evening 
  endtry

endif


# -----------------------------------------------------------------------

#   配置模板
# let s:_result = commands_basic#ExistPlug('')
# if s:_result==? 1
  # try
    # 检测当前 colorscheme  
    # if g:colors_name ==? ''
    #   
    # endif
  # catch
    # 出错就设置成vim自带配色
    # colorscheme evening 
  # endtry
# 
# endif



