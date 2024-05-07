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
    -- onenord
    {
        "rmehri01/onenord.nvim",
        lazy = true,
        config = function()
            require("onenord").setup(
                {
                    styles = {
						keywords = "bold"
                    }
                }
            )
        end
    },
    -- material
    {
        "marko-cerovac/material.nvim",
        lazy = true,
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
        priority = 1000,
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
        lazy = true,
        priority = 1000,
        -- enabled = false,
        -- enabled = true,
        config = function()
            require("catppuccin").setup({})
        end
    },
    -- base16nvim
    {
        "RRethy/base16-nvim",
        lazy = true,
        -- enabled = true,
        enabled = true,
        -- priority = 1000,
        config = function()
            require("base16-colorscheme").with_config(
                {
                    -- telescope = true,
                    -- indentblankline = true,
                    -- notify = true,
                    -- ts_rainbow = true,
                    cmp = true
                    -- illuminate = true,
                    -- dapui = true,

                    -- 设置配色
                    -- 多种配色：https://github.com/RRethy/base16-nvim
                    -- vim.cmd.colorscheme "base16-ayu-mirage"
                    -- vim.cmd.colorscheme "base16-catppuccin-macchiato"
                    -- vim.cmd.colorscheme "base16-catppuccin-mocha"
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
    }, -- base16-nvim
    -- evergarden
    {
        "comfysage/evergarden",
        -- enabled = true,
        enabled = false,
        lazy = true,
        config = function()
            require("evergarden").setup(
                {
                    vim.cmd.colorscheme "evergarden",
                    transparent_background = false,
                    contrast_dark = "soft", -- 'hard'|'medium'|'soft'
                    override_terminal = true,
                    style = {
                        tabline = {reverse = true, color = "green"},
                        search = {reverse = false, inc_reverse = true},
                        types = {italic = true},
                        keyword = {italic = true},
                        comment = {italic = false}
                    }
                    -- overrides = {} -- add custom overrides
                }
            )
        end
    },
    -- everforest
    {
        "neanias/everforest-nvim",
        lazy = true,
        config = function()
            require("everforest").setup(
                {
                    ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
                    ---Default is "medium".
                    background = "hard"
                }
            )
        end
    },
    -- forest.nvim
    {
        "Skullamortis/forest.nvim",
        lazy = true,
        priority = 1000,
        opts = {}
    },
    -- tokyonight
    {
        "folke/tokyonight.nvim",
        lazy = true,
        priority = 1000,
        -- enabled = true,
        -- enabled = false,
        config = function()
            require("tokyonight").setup(
                {
                    -- 有四种风格可设置
                    -- tokyonight-night
                    -- tokyonight-storm
                    -- tokyonight-day
                    -- tokyonight-moon
                    vim.cmd.colorscheme "tokyonight-moon"
                }
            )
        end
    },
    -- node
    {
        "shaunsingh/nord.nvim",
        -- enabled = true,
        lazy = true,
        priority = 1000,
        enabled = false,
        config = function()
            vim.g.nord_bold = true
            vim.g.nord_contrast = true
            -- 为window加边框
            vim.g.nord_borders = true
            require("nord").set({})
        end
    },
    -- onedark
    {
        "navarasu/onedark.nvim",
        lazy = true,
        config = function()
            require("onedark").setup(
                {
                    -- 可以设置不同的style
                    -- 可选的风格有：dark darker cool deep warm warmer light
                    style = "darker",
                    -- 代码风格
                    code_style = {
                        keywords = "bold",
                        functions = "bold"
                    }
                }
            )
        end
    },
    -- citruszest
    {
        "zootedb0t/citruszest.nvim",
        lazy = true,
        config = function()
            require("citruszest").setup(
                {
                    option = {
                        transparent = false, -- Enable/Disable transparency
                        bold = true,
                        italic = true
                    },
                    style = {
                        -- This will change Constant foreground color and make it bold.
                        Constant = {fg = "#FFFFFF", bold = true}
                    }
                }
            )
        end
    },
    -- bamboo
    {
        "ribru17/bamboo.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            require("bamboo").setup(
                {
                    -- Main options --
                    --  'vulgaris' (regular), 'multiplex' (greener) ,'light'
                    style = "vulgaris",
                    -- style = "multiplex",
                    -- 代码样式设置
                    code_style = {
                        keywords = {bold = true}
                    },
                    -- 高亮设置
                    highlights = {
                        -- 注释设为灰色
                        ["@comment"] = {fg = "$grey"}
                    }
                }
            )
            -- require("bamboo").load()
        end
    },
    -- miasma
    {
        "xero/miasma.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme miasma")
        end
    },
    -- mellow.nvim
    {
        "mellow-theme/mellow.nvim",
        lazy = true,
        -- enabled = false,
        -- enabled = true,
        config = function()
            -- 关键字加粗
            vim.g.mellow_bold_keywords = true
            vim.g.mellow_bold_functions = true
            -- 函数斜体
            vim.g.mellow_italic_functions = true
        end
    },
    -- rasmus
    {
        "kvrohit/rasmus.nvim",
        lazy = true,
        config = function()
            vim.g.rasmus_italic_functions = true
            vim.g.rasmus_bold_keywords = true
            -- 配色：monochrome 和 dark
            -- monochrome 配色 黑灰白配色
            -- vim.g.rasmus_variant = "monochrome"
            vim.g.rasmus_variant = "dark"
        end
    },
    -- sweet-fusion
    {
        "DanielEliasib/sweet-fusion",
        name = "sweet-fusion",
        lazy = true,
        priority = 1000,
        -- enabled = false,
        opts = {
            -- Set transparent background
            transparency = false,
            dim_inactive = true,
            hl_styles = {
                -- comments = {italic = true}
                keywords = {bold = true}
            }
        }
    },
    -- tairiki
    {
        "deparr/tairiki.nvim",
        lazy = true,
        -- priority = 1000, -- only necessary if you use tairiki as default theme
        config = function()
            require("tairiki").setup(
                {
                    code_style = {
                        keywords = "bold"
                    }
                }
            )
        end
    },
    -- mosel
    {
        "Domeee/mosel.nvim",
        lazy = true,
        config = function()
        end
    },
    -- eihigh/vim-aomi-grayscale
    {
        "eihigh/vim-aomi-grayscale",
        lazy = true
    },
    -- no-clown-fiesta
    {
        "aktersnurra/no-clown-fiesta.nvim",
        lazy = true,
        config = function()
            require("no-clown-fiesta").setup(
                {
                    style = {
                        type = {bold = true}
                    }
                }
            )
        end
    },
    -- nano
    {
        "ronisbr/nano-theme.nvim",
        lazy = true
        -- init = function ()
        --   vim.o.background = "light" -- or "dark".
        -- end
    },
    -- citrus-mist
    {
        "antonio-hickey/citrus-mist",
        lazy = true
    },
    -- aki
    {
        "comfysage/aki",
        lazy = true,
        config = function()
            require("aki").setup(
                {
                    transparent_background = false,
                    contrast_dark = "hard", -- 'hard'|'medium'|'soft'
                    override_terminal = true,
                    style = {
                        search = {reverse = true}
                    }
                }
            )
        end
    },
    -- sherbet.nvim
    {
        "lewpoly/sherbet.nvim",
        lazy = true,
        config = function()
            require("sherbet").setup({})
        end
    },
    -- palenightfall
    {
        "JoosepAlviste/palenightfall.nvim",
        lazy = true,
        config = function()
            require("palenightfall").setup({})
        end
    },
    -- twilight-moon
    {
        "comfysage/twilight-moon",
        lazy = true,
        config = function()
        end
    },
    -- grail
    {
        "chama-chomo/grail",
        lazy = true,
        config = function()
            require("grail").setup({})
        end
    },
    -- gruber-darker
    {
        "behemothbucket/gruber-darker-theme.nvim",
        lazy = true,
        config = function()
            require("gruber-darker").setup({})
        end
    },
    -- komeiji
    {
        "isopropyletherperoxide/komeiji-vim",
        lazy = true
    }
}
