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
    -- marks.nvim
    {
        "chentoast/marks.nvim",
        config = function()
            require("marks").setup(
                {
                    -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
                    -- sign/virttext. Bookmarks can be used to group together positions and quickly move
                    -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
                    -- default virt_text is "".
                    bookmark_0 = {
                        sign = "⚑",
                        virt_text = "hello world",
                        -- explicitly prompt for a virtual line annotation when setting a bookmark from this group.
                        -- defaults to false.
                        annotate = false
                    },
                    mappings = {}
                }
            )
        end
    }
}
