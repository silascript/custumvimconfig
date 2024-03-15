-- 配色相关的插件
-- 要用哪个就 enabled = true 哪个
return {
    -- one_monokai
    {
        "cpea2506/one_monokai.nvim",
        enabled = false,
        -- enabled = true,
        priority = 1000,
        config = function()
            require("one_monokai").setup(
                {
                    vim.cmd.colorscheme "one_monokai"
                }
            )
        end
    },
    -- material
    {
        "marko-cerovac/material.nvim",
        enabled = false,
        -- enabled = true,
        priority = 1000,
        config = function()
            -- material_style 要写在 vim.cmd.colorscheme之前才能生效
            -- vim.g.material_style = "deep ocean"
            -- vim.g.material_style = "darker"
            vim.g.material_style = "palenight"
            -- vim.g.material_style = "oceanic"
            -- vim.g.material_style = "lighter"
            require("material").setup(
                {
                    vim.cmd.colorscheme "material"
                }
            )
        end
    },
    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        enabled = false,
        -- enabled = true,
        priority = 1000 ,
        -- config = true,
        config = function()
			-- vim.o.background = "dark",
			-- vim.o.background = "light"
            require("gruvbox").setup(
                {
                    -- "hard" "soft" empty
                    --contrast = "soft"
                    -- contrast = ""
                    contrast = "hard",
                    vim.cmd.colorscheme "gruvbox"
                }
            )
        end
    },
    -- cutppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        enabled = false,
        -- enabled = true,
        config = function()
            require("catppuccin").setup(
                {
                    -- latte frappe macchiato mocha
                    -- flavour = "mocha",
                    -- vim.cmd.colorscheme "catppuccin"
                    -- vim.cmd.colorscheme "catppuccin-latte"
                    -- vim.cmd.colorscheme "catppuccin-frappe"
                    -- vim.cmd.colorscheme "catppuccin-macchiato"
                    vim.cmd.colorscheme "catppuccin-mocha"
                }
            )
        end
    },
    -- base16nvim
    {
        "RRethy/base16-nvim",
        enabled = true,
        -- enabled = false,
		priority = 1000,
        config = function()
            require("base16-colorscheme").with_config(
                {
                    -- telescope = true,
                    -- indentblankline = true,
                    -- notify = true,
                    -- ts_rainbow = true,
                    cmp = true,
                    -- illuminate = true,
                    -- dapui = true,

                    -- 设置配色
					-- 多种配色：https://github.com/RRethy/base16-nvim
                    -- vim.cmd.colorscheme "base16-ayu-mirage"
                    -- vim.cmd.colorscheme "base16-catppuccin-macchiato"
                    vim.cmd.colorscheme "base16-catppuccin-mocha"
                    -- vim.cmd.colorscheme "base16-monokai"
                    -- vim.cmd.colorscheme "base16-materia"
                    -- vim.cmd.colorscheme "base16-material"
                    -- vim.cmd.colorscheme "base16-material-darker"
                    -- vim.cmd.colorscheme "base16-material-palenight"
                    -- vim.cmd.colorscheme "base16-ocean"
                    -- vim.cmd.colorscheme "base16-onedark"
                    -- vim.cmd.colorscheme "base16-tokyo-night-dark"
                    -- vim.cmd.colorscheme "base16-tomorrow-night"
                    -- vim.cmd.colorscheme "base16-gruvbox-dark-medium"
                    -- vim.cmd.colorscheme "base16-gruvbox-material-dark-medium"
                    -- vim.cmd.colorscheme "base16-everforest"
                }
            )
        end
    } -- base16-nvim
}
