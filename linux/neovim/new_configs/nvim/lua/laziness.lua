local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath
        }
    )
end
vim.opt.rtp:prepend(lazypath)

-- 使用lazy 加载所需的插件
-- require("lazy").setup("plugins")
require("lazy").setup(
    {
        spec = {
            {import = "plugins"}
            -- -- -- 界面相关的插件
            -- -- {import = "plugins/ui"},
            -- -- -- telescope相关的插件
            -- -- {import = "plugins/telescope"},
            -- -- -- 各种编程语言相关的插件
            -- -- {import = "plugins/languages"}
            -- -- { import = "plugins/*/" },
        },
        -- -- concurrency = 12,
        -- defaults = {lazy = true, version = nil},
        ui = {border = "rounded"}
    }
)

-- lazy.nvim 快捷键 用于呼出lazy的管理界面
vim.keymap.set("n", "<leader>lz", "<cmd>:Lazy<cr>", {desc = "Plugin Manager"})
