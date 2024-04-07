-- 注释相关插件集

return {
    -- comment
    {
        "numToStr/Comment.nvim",
        lazy = true,
        event = "BufReadPost",
        -- event = {"CursorHold", "CursorHoldI"},
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
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            require("ts_context_commentstring").setup {}
        end
    },
    -- comment-box
    {
        "LudoPinelli/comment-box.nvim",
        lazy = true,
        event = {"BufReadPost"}
    },
    -- todo-comments
    -- 高亮注释关键字
    {
        "folke/todo-comments.nvim",
        dependencies = {"nvim-lua/plenary.nvim"},
        lazy = true,
        event = {"BufReadPost", "BufAdd"},
        config = function()
            require("todo-comments").setup({})
        end
    }
}
