vim9script

# ------------------------
#       基础插件配置
# ------------------------

# 导入通用函数
import "~/.vim/configs/commands/commands_basic.vim"

# nere commenter 插件配置
# var nerdcommc_result = commands_basic#ExistPlug('preservim/nerdcommenter')
# vim9 语法
var nerdcommc_result = commands_basic.ExistPlug('preservim/nerdcommenter')
if nerdcommc_result == 1
 
  # 注释时注释符号后插入一个空格
   g:NERDSpaceDelims = 1
  
  # 注释前插入空行
   g:NERDCommentEmptyLines = 1

  # 自定义 c 语言注释
  g:NERDCustomDelimiters = { 'c': {'left': '//' } }

endif


# --------------------------------------------

# highlightedyank 插件配置
# var hly_result = commands_basic#ExistPlug('machakann/vim-highlightedyank')
var hly_result = commands_basic.ExistPlug('machakann/vim-highlightedyank')

if hly_result == 1
  # 高亮时长
  g:highlightedyank_highlight_duration = 1500
endif


# --------------------------------------------

# startify 插件配置
# var startify_result = commands_basic#ExistPlug('mhinz/vim-startify')
var startify_result = commands_basic.ExistPlug('mhinz/vim-startify')
if startify_result == 1
	g:startify_files_number = 8

    
    # 使用 figlet 来生成文字图案
	g:startify_custom_header =
       \ startify#pad(split(system('figlet -f "ANSI Shadow" Hello VIM'), '\n'))
endif


# --------------------------------------------

# vim-togglecursor 插件配置
# var togglecursor_result = commands_basic#ExistPlug('jszakmeister/vim-togglecursor')
var togglecursor_result = commands_basic.ExistPlug('jszakmeister/vim-togglecursor')
if togglecursor_result == 1
	# var togglecursor_insert = "line"
	# var togglecursor_leave = "line"
endif


# --------------------------------------------

# cosco 插件配置
import "~/.vim/configs/config_data/settings/settings_plugins_punctuation.vim"


# --------------------------------------------

# let s:_result = commands_basic#ExistPlug('')
# if s:_result ==? 1
# 
# endif


