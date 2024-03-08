-- 缩进插件集

return {
    -- hlchunk.nvim
    {
        "shellRaining/hlchunk.nvim",
		enabled = true,
        event = {"UIEnter"},
        config = function()
            require("hlchunk").setup({
				blank = {
					enable = false,
				},
				line_num = {
					enable = false,
				},
				chunk = {
					-- enable =false,
					use_treesiter = true,
				}
			})
        end
    },
    -- indent-blankline
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
		enabled = false,
        event = "BufReadPost",
        config = function()
            local highlight = {
                "RainbowRed",
                "RainbowYellow",
                "RainbowBlue",
                "RainbowOrange",
                "RainbowGreen",
                "RainbowViolet",
                "RainbowCyan"
            }

            local hooks = require "ibl.hooks"
            -- create the highlight groups in the highlight setup hook, so they are reset
            -- every time the colorscheme changes
            hooks.register(
                hooks.type.HIGHLIGHT_SETUP,
                function()
                    vim.api.nvim_set_hl(0, "RainbowRed", {fg = "#E06C75"})
                    vim.api.nvim_set_hl(0, "RainbowYellow", {fg = "#E5C07B"})
                    vim.api.nvim_set_hl(0, "RainbowBlue", {fg = "#61AFEF"})
                    vim.api.nvim_set_hl(0, "RainbowOrange", {fg = "#D19A66"})
                    vim.api.nvim_set_hl(0, "RainbowGreen", {fg = "#98C379"})
                    vim.api.nvim_set_hl(0, "RainbowViolet", {fg = "#C678DD"})
                    vim.api.nvim_set_hl(0, "RainbowCyan", {fg = "#56B6C2"})
                end
            )

            require("ibl").setup(
                {
                    indent = {highlight = highlight}

                    -- 关闭第一列显示缩进指南
                    -- show_first_indent_level = false,
                }
            )
        end
        -- opts = {}
    },
}
