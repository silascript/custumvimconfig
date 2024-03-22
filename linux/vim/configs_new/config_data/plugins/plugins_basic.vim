vim9script

# --------------------------------
#			基础插件集
#	此插件集主要提供基础功能增加
# --------------------------------

# 快速注释
Pack 'preservim/nerdcommenter'
# augroup load_nerdcommenter
	# autocmd!
	# autocmd BufEnter * call plug#load('nerdcommenter') | autocmd! load_nerdcommenter 
# augroup END

# 光标样式切换
Pack 'jszakmeister/vim-togglecursor'
# augroup load_togglecursor
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-togglecursor') | autocmd! load_togglecursor
# augroup END

# 快速操作环绕字符
Pack 'tpope/vim-surround'
# augroup load_surround
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-surround') | autocmd! load_surround
# augroup END
	

# 高亮光标所在的单词
Pack 'itchyny/vim-cursorword'
# augroup load_cursorword
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-cursorword') | autocmd! load_cursorword 
# augroup END


# 高亮复制的内容
Pack 'machakann/vim-highlightedyank'
# augroup load_highlightedyank
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-highlightedyank') | autocmd! load_highlightedyank 
# augroup END

# 跳转增强
Pack 'easymotion/vim-easymotion'
# augroup load_easymotion
	# autocmd!
	# autocmd BufEnter * call plug#load('vim-easymotion') | autocmd! load_easymotion 
# augroup END

# vim 9 版的easymotion
# Plug 'monkoose/vim9-stargate'


# 开始页面
Pack 'mhinz/vim-startify'

# 命令行模式提示
Pack 'girishji/autosuggest.vim'

# 标点符号
import "~/.vim/configs_new/config_data/plugins/plugins_punctuation.vim"

# 乱数假文插件
import "~/.vim/configs_new/config_data/plugins/plugins_lorem.vim"

# 检测各插件影响 vim 性能
Pack 'dstein64/vim-startuptime'



