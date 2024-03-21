-- 界面相关的插件

return {
    -- nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        -- event = "UIEnter",
        event = "VimEnter",
        config = function()
            require("nvim-tree").setup {}
        end
    },
    -- bufferline 插件
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        event = {"BufEnter","BufNewFile"},
        -- event = {"BufReadPre"},
        -- event = {"VeryLazy"},
        -- event = {"VimEnter"},
        -- event = {"BufReadPost"},
        config = function()
            require("bufferline").setup {}
        end
    },
    -- nvim-treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        -- event = "BufReadPre",
        -- event = "VimEnter",
        event = "BufEnter",
        -- event = {"BufReadPre","BufNewFile"},
        -- event = {"BufReadPost"},
        config = function()
            require("nvim-treesitter.configs").setup(
                {
                    ensure_installed = {
                        "c",
                        "cpp",
                        "bash",
                        "perl",
                        "html",
                        "css",
                        "scss",
                        "json",
                        "vim",
                        "lua",
                        "go",
                        "gomod",
                        "gosum",
                        "javascript",
                        "typescript",
                        "ruby",
                        "rust",
                        "java",
                        "groovy",
                        "kotlin",
                        "gitignore",
                        "git_config",
                        "markdown",
                        "yaml",
                        "sql",
                        "toml",
                        "php",
                        "xml"
                    },
                    highlight = {
                        enable = true,
                        additional_vim_regex_highlighting = false
                    },
                    -- indent = { enable = true },
                    -- 不同括号颜色区分
                    rainbow = {
                        enable = true,
                        extended_mode = true,
                        max_file_lines = nil
                    }
                }
            ) -- require().setup
        end
    }
}
