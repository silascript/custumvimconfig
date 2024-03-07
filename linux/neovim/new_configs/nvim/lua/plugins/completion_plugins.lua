-- completion 的插件集

return {
    -- nvim-cmp
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"onsails/lspkind.nvim",
        },
		-- event = { "InsertEnter", "CmdlineEnter" },
		event = { "InsertEnter" },
		-- event = "VeryLazy",
        config = function()

			local has_words_before = function()
			  unpack = unpack or table.unpack
			  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
			end


			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local lspkind = require('lspkind')
			-- local rikka = require("rikka")

			cmp.setup({
				window = {
				  -- completion = cmp.config.window.bordered(),
					completion = {
						-- border = rikka.border,
						-- winhighlight = "Normal:CmpNormal",
						winhighlight = "Normal:CmpNormal,FloatBorder:Pmenu,Search:None",
						-- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
						col_offset = -3,
						side_padding = 0,
					},

				  -- documentation = cmp.config.window.bordered(),
				},

				formatting = {

					format = lspkind.cmp_format({
						-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
						mode = 'symbol_text',
						maxwidth = 50,
						ellipsis_char = '...',

						before = function (entry, vim_item)
								vim_item.menu = ({
									buffer = "[Buffer]",
									nvim_lsp = "[LSP]",
									luasnip = "[LuaSnip]",
									nvim_lua = "[Lua]",
									latex_symbols = "[LaTeX]",
								})[entry.source.name]
							return vim_item
					    end
					}),
				},

				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "path" },
					{ name = "calc" },
				},{
					{ name = "buffer", keyword_length = 3 },
				}),

				mapping = cmp.mapping.preset.insert({

					-- ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert}),
					-- ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert}),
					

					-- ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert}),
					-- ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert}),


					 ["<Tab>"] = cmp.mapping(function(fallback)
					  if cmp.visible() then
						cmp.select_next_item()
					  elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					  elseif has_words_before() then
						cmp.complete()
					  else
						fallback()
					  end
					end, { "i", "s" }),

					["<S-Tab>"] = cmp.mapping(function(fallback)
					  if cmp.visible() then
						cmp.select_prev_item()
					  elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					  else
						fallback()
					  end
					end, { "i", "s" }),

					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "s" }),
					["<C-e>"] = cmp.mapping(cmp.mapping.abort(), { "i", "s" }),
					-- ["<CR>"] = cmp.mapping.confirm({select = true})
					["<CR>"] = cmp.mapping({
						i = function(fallback)
							if cmp.visible() then
								cmp.confirm({ select = true })
							else
								fallback()
							end
						end,
						s = cmp.mapping.confirm({ select = true }),
					}),
				})
			}) --require("cmp")
        end,
    },



}
