" -----------------------------------
"		deoplete 插件配置
" -----------------------------------
" 启动deoplete
let g:deoplete#enable_at_startup = 1
let g:auto_complete_delay = 10
" 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

