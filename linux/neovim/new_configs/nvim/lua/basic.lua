--          ╭─────────────────────────────────────────────────────────╮
--          │						基础配置                          │
--          ╰─────────────────────────────────────────────────────────╯

-- 显示行号
vim.opt.number = true
-- 显示相对行号
vim.opt.relativenumber = true
-- 高亮当前行
vim.opt.cursorline = true
-- 状态栏样式
-- 2 为每个window独立的状态栏
-- 3为全局，即两个window共用同一个状态栏
vim.opt.laststatus = 3
-- 命令行高

-- 开启真彩
vim.opt.termguicolors = true

-- 与底部保持固定间距
vim.opt.scrolloff = 5

-- Tab 相关设置
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- 编码
vim.opt.langmenu = "zh_CN.UTF-8"
vim.opt.fileencodings = "utf-8,gb18030,gb2312,ucs-bom,cp936,big5,euc-jp,euc-kr"

-- 搜索
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.completeopt = "menu,menuone,noinsert"

-- 补全显示的行数
vim.opt.pumheight = 10

-- 自动切换工作路径
vim.opt.autochdir = true


-- 取消注释行回车自动注释
vim.api.nvim_create_autocmd(
    {"FileType"},
    {
        command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o"
    }
)
