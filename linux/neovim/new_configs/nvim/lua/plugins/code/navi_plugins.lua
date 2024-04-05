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
    }
}
