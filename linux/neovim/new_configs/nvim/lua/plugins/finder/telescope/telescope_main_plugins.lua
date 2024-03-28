-- telescope插件主配置文件

return {
    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {"nvim-lua/plenary.nvim"},
		cmd = "Telescope",
		lazy = true,
        -- event = {"VimEnter"},
        config = function()
			-- 内置功能
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
            require("telescope").setup {
                -- 扩展设置
                extensions = {
                    -- file-browser
                    file_browser = {
                        theme = "ivy"
                    },
                    -- fzf-native
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case"
                    },
                }
            }
            --加载扩展
            -- file_browser
            require("telescope").load_extension("file_browser")
			-- fzf-native
            require("telescope").load_extension("fzf")
        end
    } --telescope
}
