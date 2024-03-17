vim9script

# --------------------------------
#			基础插件集
#	此插件集主要提供基础功能增加
# --------------------------------

# 快速注释
Plug 'preservim/nerdcommenter'

# 光标样式切换
Plug 'jszakmeister/vim-togglecursor'

# 快速操作环绕字符
Plug 'tpope/vim-surround'

# 高亮光标所在的单词
Plug 'itchyny/vim-cursorword'

# 高亮复制的内容
Plug 'machakann/vim-highlightedyank'

# 跳转增强
Plug 'easymotion/vim-easymotion'
# vim 9 版的easymotion
# Plug 'monkoose/vim9-stargate'


# 开始页面
Plug 'mhinz/vim-startify'


# 命令行模式提示
Plug 'girishji/autosuggest.vim'

# 标点符号
import "~/.vim/configs/config_data/plugins/plugins_punctuation.vim"


# 乱数假文插件
import "~/.vim/configs/config_data/plugins/plugins_lorem.vim"

# 检测各插件影响 vim 性能
Plug 'dstein64/vim-startuptime'



