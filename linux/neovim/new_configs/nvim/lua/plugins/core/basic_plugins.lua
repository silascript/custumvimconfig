-- 基础的插件集

return {
    --成对符号自动补全
    {
        "windwp/nvim-autopairs",
		lazy = true,
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },
    -- nvim-cursorline
    {
        "yamatsum/nvim-cursorline",
		lazy = true,
        event = "BufReadPost",
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
    {
        "sontungexpt/stcursorword",
		lazy = true,
        event = "BufReadPost",
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
        event = "VeryLazy",
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
        event = {"BufReadPost"},
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
    }
}
