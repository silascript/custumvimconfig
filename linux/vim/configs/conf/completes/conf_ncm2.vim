" -----------------------------------
"			ncm2 基础配置
" -----------------------------------

autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

" 触发补全字符数
let ncm2#complete_length = [[1, 1]]

" 补全菜单弹出延迟
let ncm2#popup_delay = 8


