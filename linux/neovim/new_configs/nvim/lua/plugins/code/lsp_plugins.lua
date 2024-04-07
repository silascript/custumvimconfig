-- lsp 的插件集

return {
    -- nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        lazy = true,
        event = {"BufReadPre", "BufNewFile"},
        -- event = { "CursorHold", "CursorHoldI" },
        -- enabled = false,
        config = function()
            local lspconfig = require("lspconfig")

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true

            -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
            lspconfig.clangd.setup {}
            lspconfig.bashls.setup {}
            lspconfig.lua_ls.setup {}

            -- html css typescript
            lspconfig.html.setup {
                capabilities = capabilities
            }
            lspconfig.cssls.setup {
                capabilities = capabilities
            }
            lspconfig.tsserver.setup {}

            -- golang
            lspconfig.gopls.setup {}
            -- java
            -- lspconfig.jdtls.setup{ capabilities = capabilities }
            lspconfig.jdtls.setup {}

            -- python
            lspconfig.pyright.setup {
                settings = {
                    pyright = {
                        -- Using Ruff's import organizer
                        disableOrganizeImports = true
                    },
                    python = {
                        analysis = {
                            -- Ignore all files for analysis to exclusively use Ruff for linting
                            ignore = {"*"}
                        }
                    }
                }
            }

            -- local on_attach = function(client, bufnr)
            --     if client.name == "ruff_lsp" then
            --         -- Disable hover in favor of Pyright
            --         client.server_capabilities.hoverProvider = false
            --     end
            -- end

            -- 使用 ruff 或 ruff-lsp 来作python分析诊断
            -- lspconfig.ruff.setup {}
            lspconfig.ruff_lsp.setup {}

            -- ruby
            lspconfig.solargraph.setup {
                -- root_dir = function(fname)
                root_dir = function()
                    return vim.fn.getcwd()
                end,
                settings = {
                    solargraph = {}
                }
            }

            -- markdown
            -- lspconfig.marksman.setup {}
            lspconfig.markdown_oxide.setup {
                -- capabilities = capabilities,
                root_dir = function()
                    return vim.fn.getcwd()
                end,
                option = {
                    keyword_pattern = [[\(\k\| \|\/\|#\)\+]]
                }
            }

            -- rust
            lspconfig.rust_analyzer.setup {
                settings = {
                    ["rust-analyzer"] = {}
                }
            }

            --
            -- vim.api.nvim_create_autocmd(
            --     {"TextChanged", "InsertLeave", "CursorHold", "LspAttach"},
            --     {
            --         buffer = bufnr,
            --         callback = vim.lsp.codelens.refresh
            --     }
            -- )

            -- trigger codelens refresh
            -- vim.api.nvim_exec_autocmds("User", {pattern = "LspAttached"})
        end --config
    }, --nvim-lspconfig
    -- lspsaga
    -- {
    -- 	'nvimdev/lspsaga.nvim',
    -- 	config = function()
    -- 		require('lspsaga').setup({})
    -- 	end,
    -- },

    -- trouble
    {
        "folke/trouble.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            -- require("trouble").setup({
            -- })
            vim.keymap.set(
                "n",
                "<leader>xx",
                function()
                    require("trouble").toggle()
                end
            )
            vim.keymap.set(
                "n",
                "<leader>xw",
                function()
                    require("trouble").toggle("workspace_diagnostics")
                end
            )
            vim.keymap.set(
                "n",
                "<leader>xd",
                function()
                    require("trouble").toggle("document_diagnostics")
                end
            )
            vim.keymap.set(
                "n",
                "<leader>xq",
                function()
                    require("trouble").toggle("quickfix")
                end
            )
            vim.keymap.set(
                "n",
                "<leader>xl",
                function()
                    require("trouble").toggle("loclist")
                end
            )
            vim.keymap.set(
                "n",
                "gR",
                function()
                    require("trouble").toggle("lsp_references")
                end
            )
        end
    }
}
