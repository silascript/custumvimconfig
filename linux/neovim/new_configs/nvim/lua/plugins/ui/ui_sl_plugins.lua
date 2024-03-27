-- 状态栏相关的插件
return {
    -- lualine 插件
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
		lazy = true,
		-- event = { "BufReadPost", "BufAdd", "BufNewFile" },
		event = {"VimEnter"},
        -- enabled = false,
        enabled = true,
        config = function()
            require("lualine").setup {
                options = {
                    -- globalstatus = true,

                    -- 设置样式
                    -- 使用 auto 意味着状态栏配色使用全局配色
                    -- 即使用 vim.cmd.colorscheme 指定的配色
                    theme = "auto"
                    -- theme = "nord"
                    -- theme = "gruvbox",
                    -- theme = "ayu_mirage",
                    -- theme = "everforest",
                    -- theme = "material",
                    -- theme = "onedark",
                    -- theme = "OceanicNext",
                    -- section_separators = "",
                    -- component_separators = ""
                    -- section_separators = { left = '', right = '' },
                    -- component_separators = { left = '', right = '' }

                    -- component_separators = { left = '', right = ''},
                    -- section_separators = { left = '', right = ''},

                    -- refresh = {                  -- sets how often lualine should refresh it's contents (in ms)
                    -- 	statusline = 1000,
                    -- },
                }
            }
        end
    },
    -- linefly
    {
        "bluz71/nvim-linefly",
        enabled = false,
        -- enabled = true,
        config = function()
            vim.g.linefly_options = {
                with_lsp_status = false,
                -- separator_symbol = 'U+276F'
                separator_symbol = "❮"
            }
        end
    },
    -- nvim-hardline
    {
        "ojroques/nvim-hardline",
        enabled = false,
        -- enabled = true,
        config = function()
            require("hardline").setup(
                {
                    -- theme = "catppuccin_minimal"
                    -- theme = "codeschool_dark"
                    -- theme = "jellybeans"
                    -- theme = "nord"
                    -- theme = "nordic"
                    -- theme = "one"
                    -- theme = "gruvbox_minimal"
                    -- theme = "gruvbox"
                    -- theme = "evergarden"
                }
            )
        end
    },
    -- yasl
    {
        "brianaung/yasl.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        -- event = "VimEnter",
        enabled = false,
        -- enabled = true,
        config = function()
            require("yasl").setup({})
        end
    },
}
