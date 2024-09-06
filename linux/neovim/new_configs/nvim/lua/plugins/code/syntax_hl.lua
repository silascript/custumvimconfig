-- 语法高亮相关的插件

return {
    -- nvim-treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            require("nvim-treesitter.configs").setup(
                {
                    ensure_installed = {
						"awk",
                        "c",
                        "cpp",
                        "bash",
                        "perl",
                        "html",
                        "css",
                        "scss",
                        "json",
                        "jsonc",
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
