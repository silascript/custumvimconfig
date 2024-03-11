-- 界面扩展相关的插件
-- 一些界面相关的小工具插件

return {
    -- modicator
    {
        "mawkler/modicator.nvim",
        -- dependencies = "mawkler/onedark.nvim", -- Add your colorscheme plugin here
        dependencies = "catppuccin/nvim",
        enabled = false,
        -- event = {"BufReadPost"},
        event = {"VimEnter"},
        init = function()
            -- These are required for Modicator to work
            vim.o.cursorline = true
            vim.o.number = true
            vim.o.termguicolors = true
        end,
        config = function()
            require("modicator").setup({})
        end,
        opts = {
            show_warnings = true
        }
    },
    -- smartcolumn
    {
        "m4xshen/smartcolumn.nvim",
        event = {"VeryLazy"},
        opts = {}
    },
}
