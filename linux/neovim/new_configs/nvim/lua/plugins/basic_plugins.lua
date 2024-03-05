-- 基础的插件集

return {
    --成对符号自动补全
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },
    -- nvim-cursorline
    {
        "yamatsum/nvim-cursorline",
        config = function()
            require("nvim-cursorline").setup(
                {
                    cursorword = {
                        enable = true,
                        min_length = 2,
                        hl = {underline = true}
                    },
                    cursorline = {
                        enable = false
                    }
                }
            )
        end
    },
    -- nvim-surround
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end
    },
    -- comment
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup(
                {
                    -- NORMAL模式
                    toggler = {
                        line = "<leader>cc"
                    },
                    -- NORMAL模式及VISUAL模式
                    opleader = {
                        line = "<leader>cc"
                    }
                }
            )
        end
    },
}
