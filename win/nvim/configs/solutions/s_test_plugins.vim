
" ----------------------
"		测试方案	
" ----------------------

" 基础命令
source ~\AppData\Local\nvim\configs\commands\commands_basic.vim

" 引入基础配置
source ~\AppData\Local\nvim\configs\config_data\settings\settings_basic.vim

" 导入插件集
call plug#begin('~\AppData\Local\nvim-data\site\plugged')

	source ~\AppData\Local\nvim\configs\config_data\plugins\plugins_basic.vim


call plug#end()

" 设置
" source ~\AppData\Local\nvim\configs\config_data\settings\settings_xxx.vim


