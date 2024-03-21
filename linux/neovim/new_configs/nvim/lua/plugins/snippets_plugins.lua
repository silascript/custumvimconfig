-- snippet的插件集

return {
    -- LuaSnip
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
        dependencies = {
            "honza/vim-snippets",
            -- "rafamadriz/friendly-snippets",
            config = function()
                -- 加载 vim-snippets 库
                require("luasnip.loaders.from_snipmate").load()

                -- 加载 rafamadriz/friendly-snippets 库
                -- require("luasnip.loaders.from_vscode").load()
            end
        },
        enabled = false,
        event = "VeryLazy",
        -- event = "InsertEnter",
        -- event = {"InsertEnter","CmdlineEnter"},
        config = function()
            require("luasnip").config.setup(
                {
                    enable_autosnippets = true
                    -- enable_autosnippets = false,

                    -- keys = {
                    -- 	{
                    -- 		"<tab>",
                    -- 		function()
                    -- 		  return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
                    -- 		end,
                    -- 		expr = true, silent = true, mode = "i",
                    -- 	},
                    --   { "<tab>", function() require("luasnip").jump(1) end, mode = "s" },
                    --   { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
                    --
                    -- } --keys
                }
            )
        end
    },
    -- friendly-snippets
    -- snippet 库
    --    {
    -- 	"rafamadriz/friendly-snippets",
    -- 	event = { "BufReadPre" }
    -- }

    -- nvim-snippy
    {
        "dcampos/nvim-snippy",
        dependencies = {
            "honza/vim-snippets"
        },
        -- enabled = false,
        enabled = true,
        event = {"BufEnter"},
        config = function()
            require("snippy").setup({})
        end
    }
}
