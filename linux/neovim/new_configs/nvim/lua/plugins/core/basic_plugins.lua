-- 基础的插件集

return {
    --成对符号自动补全
    {
        "windwp/nvim-autopairs",
        lazy = true,
        event = "InsertEnter",
        -- enabled = false,
        config = function()
            require("nvim-autopairs").setup {}
        end
    },
    -- nvim-cursorline
    -- 高亮当前行及当前单词
    {
        "yamatsum/nvim-cursorline",
        lazy = true,
        event = {"BufReadPost", "BufNewFile", "BufAdd"},
        enabled = false,
        -- enabled = true,
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
    -- stcursorword
    -- 高亮当前单词
    {
        "sontungexpt/stcursorword",
        lazy = true,
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        enabled = true,
        config = function()
            require("stcursorword").setup(
                {
                    min_word_length = 2,
                    max_word_length = 50
                }
            )
        end
    },
    -- nvim-surround
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        lazy = true,
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        config = function()
            require("nvim-surround").setup({})
        end
    },
    -- nvim-tx-autotag
    -- 自动关闭tag标签
    {
        "windwp/nvim-ts-autotag",
        dependencies = {"nvim-treesitter/nvim-treesitter"},
        lazy = true,
        event = {"InsertEnter"},
        -- ft = {
        -- 	"html",
        -- 	"xml",
        -- },
        config = function()
            require("nvim-ts-autotag").setup()
        end
    },
    -- hop.nvim
    {
        "smoka7/hop.nvim",
        lazy = true,
        -- event = {"CursorHold", "CursorHoldI"},
        -- event = {"VeryLazy"},
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        config = function()
            require("hop").setup(
                {
                    -- 行间跳转
                    -- 向下行间跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>j", "<cmd>HopLineAC<cr>", {silent = true}),
                    -- 向上行间跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>k", "<cmd>HopLineBC<cr>", {silent = true}),
                    -- 单词级跳转
                    -- 可视范围所有地方单词跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>w", "<cmd>HopWord<cr>", {silent = true}),
                    -- 当前行往下可视范围所有单词跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>wj", "<cmd>HopWordAC<cr>", {silent = true}),
                    -- 当前行往上可视范围所有单词跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>wk", "<cmd>HopWordBC<cr>", {silent = true}),
                    -- 当前行所有单词跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>wl", "<cmd>HopWordCurrentLine<cr>", {silent = true}),
                    -- 当前行向左所有单词跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>h", "<cmd>HopWordCurrentLineBC<cr>", {silent = true}),
                    -- 当前行向右所有单词跳转
                    vim.api.nvim_set_keymap("n", "<leader><leader>l", "<cmd>HopWordCurrentLineAC<cr>", {silent = true})
                }
            )
        end
    }, -- hop
    -- sentiment
    -- 高亮当前块成对括号
    {
        "utilyre/sentiment.nvim",
        version = "*",
        lazy = true,
        -- event = "VeryLazy", -- keep for lazy loading
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        --       opts = {
        --
        -- },
        -- init = function()
        --     -- `matchparen.vim` needs to be disabled manually in case of lazy loading
        --     vim.g.loaded_matchparen = 1
        -- end
        config = function()
            require("sentiment").setup({})
        end
    },
    -- smoothcursor
    {
        "gen740/SmoothCursor.nvim",
        lazy = true,
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        config = function()
            require("smoothcursor").setup(
                {
                    -- fancy 模式
                    fancy = {
                        enable = true
                    },
                    speed = 50
                }
            )
        end
    },
    -- cursor.nvim
    -- 设置光标样式
    {
        "rasulomaroff/cursor.nvim",
        lazy = true,
        -- event = {"BufReadPost", "BufAdd", "BufNewFile"},
        event = {"BufEnter"},
        config = function()
            require("cursor").setup(
                {
                    cursors = {
                        {
                            -- 让光标闪烁
                            mode = "a",
                            blink = {wait = 200, default = 400}
                        }
                    }
                }
            )
        end
    },
    -- yanky
    {
        "gbprod/yanky.nvim",
        dependencies = {"kkharji/sqlite.lua"},
        lazy = true,
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        config = function()
            require("yanky").setup(
                {
                    system_clipboard = {
                        sync_with_ring = false
                    },
                    highlight = {
                        on_put = true,
                        on_yank = true,
                        timer = 2000
                    }
                }
            )
        end
    } -- yanky
}
