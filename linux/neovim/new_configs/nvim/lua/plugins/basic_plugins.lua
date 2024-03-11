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
        -- event = "UIEnter",
        event = "BufReadPost",
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
        event = "BufReadPost",
        config = function()
            require("Comment").setup(
                {
                    -- 使用ts_context_commentstring来改善注释样式
                    pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
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
    -- nvim-ts-context-commentstring
    -- 基于nvim-treesitter，根据当前光标在文中的位置，配合Comment.nvim，自动选择合适的注释格式
    {
        "JoosepAlviste/nvim-ts-context-commentstring",
        dependencies = {"nvim-treesitter/nvim-treesitter"},
        -- lazy = true,
        event = {"BufReadPost"},
        config = function()
            require("ts_context_commentstring").setup {}
        end
    },
    -- nvim-tx-autotag
    -- 自动关闭tag标签
    {
        "windwp/nvim-ts-autotag",
        dependencies = {"nvim-treesitter/nvim-treesitter"},
        event = {"BufReadPost"},
        config = function()
            require("nvim-ts-autotag").setup()
        end
    },
}
