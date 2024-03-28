-- completion 的插件集

return {
    -- nvim-cmp
    {
        "hrsh7th/nvim-cmp",
        -- lazy = true,
        event = {"InsertEnter"},
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-calc",
            -- 使用luasnip
            -- "L3MON4D3/LuaSnip",
            -- "saadparwaiz1/cmp_luasnip",
            -- 使用 nvim-snippy
            "dcampos/nvim-snippy",
            "dcampos/cmp-snippy",
            "onsails/lspkind.nvim"
        },
        config = function()
            -- local has_words_before = function()
            --   unpack = unpack or table.unpack
            --   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            --   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            -- end

            local cmp = require("cmp")
            -- local luasnip = require("luasnip")
            local lspkind = require("lspkind")
            --
            -- local has_words_before = function()
            --   unpack = unpack or table.unpack
            --   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            --   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            -- end
            cmp.setup(
                {
                    window = {
                        -- completion = cmp.config.window.bordered(),
                        completion = {
                            -- border = rikka.border,
                            -- winhighlight = "Normal:CmpNormal,FloatBorder:Pmenu,Search:None",
                            -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                            -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu",
                            col_offset = -3,
                            side_padding = 0,
                            completeopt = "menu,menuone,oninsert,noselect"
                        }

                        -- documentation = cmp.config.window.bordered(),
                    },
                    view = {
                        entries = {
                            -- "custom", "wildmenu" or "native"
                            name = "custom",
                            selection_order = "near_cursor"
                        }
                    },
                    formatting = {
                        format = lspkind.cmp_format(
                            {
                                -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
                                mode = "symbol_text",
                                maxwidth = 50,
                                ellipsis_char = "...",
                                before = function(entry, vim_item)
                                    vim_item.menu =
                                        ({
                                        buffer = "[Buffer]",
                                        nvim_lsp = "[LSP]",
                                        -- luasnip = "[LuaSnip]",
                                        snippy = "[nvim-snippy]",
                                        nvim_lua = "[Lua]"
                                        -- latex_symbols = "[LaTeX]",
                                    })[entry.source.name]
                                    return vim_item
                                end
                            }
                        )
                    },
                    snippet = {
                        expand = function(args)
                            -- 使用 luasnip
                            -- require "luasnip".lsp_expand(args.body)
                            -- 使用 nvim-snippy
                            require "snippy".expand_snippet(args.body)
                        end
                    },
                    sources = cmp.config.sources(
                        {
                            {name = "nvim_lsp"},
                            -- {name = "luasnip"},
                            {name = "snippy"},
                            {name = "path"},
                            {name = "calc"}
                        },
                        {
                            {name = "buffer", keyword_length = 3}
                        }
                    ),
                    mapping = cmp.mapping.preset.insert(
                        {
                            -- ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert}),
                            -- ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert}),

                            -- ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert}),
                            -- ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert}),

                            -- luasnip
                            --  ["<Tab>"] = cmp.mapping(function(fallback)
                            --   if cmp.visible() then
                            -- 	cmp.select_next_item()
                            --   elseif luasnip.expand_or_jumpable() then
                            -- 	luasnip.expand_or_jump()
                            --   elseif has_words_before() then
                            -- 	cmp.complete()
                            --   else
                            -- 	fallback()
                            --   end
                            -- end, { "i", "s" }),
                            --
                            -- ["<S-Tab>"] = cmp.mapping(function(fallback)
                            --   if cmp.visible() then
                            -- 	cmp.select_prev_item()
                            --   elseif luasnip.jumpable(-1) then
                            -- 	luasnip.jump(-1)
                            --   else
                            -- 	fallback()
                            --   end
                            -- end, { "i", "s" }),

                            --
                            -- No snippet plugin
                            ["<Tab>"] = cmp.mapping(
                                function(fallback)
                                    if cmp.visible() then
                                        cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
                                    else
                                        fallback()
                                    end
                                end,
                                {
                                    "i",
                                    "s"
                                }
                            ),
                            ["<S-Tab>"] = cmp.mapping(
                                function(fallback)
                                    if cmp.visible() then
                                        cmp.select_prev_item({behavior = cmp.SelectBehavior.Select})
                                    else
                                        fallback()
                                    end
                                end,
                                {
                                    "i",
                                    "s"
                                }
                            ),
                            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                            ["<C-f>"] = cmp.mapping.scroll_docs(4),
                            ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), {"i", "s"}),
                            ["<C-e>"] = cmp.mapping(cmp.mapping.abort(), {"i", "s"}),
                            -- ["<CR>"] = cmp.mapping.confirm({select = true})

                            ["<CR>"] = cmp.mapping(
                                {
                                    i = function(fallback)
                                        if cmp.visible() then
                                            cmp.confirm({behavior = cmp.ConfirmBehavior.Replace, select = false})
                                        else
                                            fallback()
                                        end
                                    end,
                                    s = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true})
                                }
                            )
                        }
                    )
                }
            ) --require("cmp")
        end
    }, -- cmp

	-- cmp-cmdline
    {
        "hrsh7th/cmp-cmdline",
        keys = {":", "/", "?"},
        dependencies = {"hrsh7th/nvim-cmp"},
        config = function()
			local cmp =require("cmp")
            -- cmdline
            cmp.setup.cmdline(
                ":",
                {
                    mapping = cmp.mapping.preset.cmdline(),
                    sources = cmp.config.sources(
                        {
                            {name = "path"}
                        },
                        {
                            {
                                name = "cmdline",
                                option = {
                                    ignore_cmds = {"Man", "!"}
                                }
                            }
                        }
                    )
                }
            ) --cmdline
        end
    }
}
