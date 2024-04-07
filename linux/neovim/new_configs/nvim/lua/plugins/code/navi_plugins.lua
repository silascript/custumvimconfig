--          ╭─────────────────────────────────────────────────────────╮
--          │                   代码导航相关插件                      │
--          ╰─────────────────────────────────────────────────────────╯

return {
    -- nvim-navic
    {
        "SmiteshP/nvim-navic",
        dependencies = "neovim/nvim-lspconfig",
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            local navic = require("nvim-navic")

            vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

            -- local on_attach = function(client, bufnr)
            --     if client.server_capabilities.documentSymbolProvider then
            --         navic.attach(client, bufnr)
            --     end
            -- end

            navic.setup(
                {
                    lsp = {
                        auto_attach = true,
                        -- auto_attach = false,
                        -- on_attach = on_attach,
                        -- preference = {"clangd", "gopls"}
                        preference = {"ruff-lsp", "solargraph", "typescript-language-server", "bash-language-server"}
                    }
                }
            )
        end
    }, -- navic
    -- goto-preview
    {
        "rmagatti/goto-preview",
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            require("goto-preview").setup {
                width = 80,
                height = 15,
                default_mappings = true
            }
        end
    },
    -- Cybu
    -- 快速切换Buffer
    {
        "ghillb/cybu.nvim",
        lazy = true,
        event = {"BufReadPost", "BufNewFile", "BufAdd"},
        dependencies = {"nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim"},
        enabled = false,
        config = function()
            local ok, cybu = pcall(require, "cybu")
            if not ok then
                return
            end
            cybu.setup({})
            -- 快捷键设置
            -- vim.keymap.set("n", "<leader>bp", "<Plug>(CybuPrev)")
            -- vim.keymap.set("n", "<leader>bn", "<Plug>(CybuNext)")
            -- vim.keymap.set("n", "<c-s-Tab>", "<plug>(CybuPrev)")
            -- vim.keymap.set("n", "<c-Tab>", "<plug>(CybuNext)")
            -- vim.keymap.set({"n","v"}, "<c-s-Tab>", "<Plug>(CybuLastusedPrev)")
            -- vim.keymap.set({"n","v"}, "<c-Tab>", "<Plug>(CybuLastusedNext)")
            vim.keymap.set("n", "<c-s-tab>", "<cmd>CybuPrev<cr>")
            vim.keymap.set("n", "<c-tab>", "<cmd>CybuNext<cr>")
        end
    }, -- cybu
    -- nap.nvim
    -- 快速切换buffer、tag、tab
    {
        "liangxianzhe/nap.nvim",
        lazy = true,
        event = {"BufReadPost", "BufNewFile", "BufAdd"},
        enabled = false,
        config = function()
            require("nap").setup(
                {
                    next_prefix = "]",
                    prev_prefix = "[",
                    next_repeat = "<c-n>",
                    prev_repeat = "<c-p>",
                    -- to exclude some keys from the default
                    exclude_default_operators = {"a", "A", "b", "B"}
                }
            )
        end
    }, --nap.nvim

}
