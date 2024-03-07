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
			config = function()
				require("luasnip.loaders.from_snipmate").load()
			end,

		},

		-- event = "VeryLazy",
		event = "InsertEnter",
		-- event = {"InsertEnter","CmdlineEnter"},
		config =function()
			require("luasnip").config.setup({

				enable_autosnippets = true,
				keys = {
					{
						"<tab>",
						function()
						  return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
						end,
						expr = true, silent = true, mode = "i",
					},
				  { "<tab>", function() require("luasnip").jump(1) end, mode = "s" },
				  { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },

				}
			})

		end,



	},


}
