-- 界面相关的插件

return {
    -- nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = true,
        cmd = {
            "NvimTreeToggle",
            "NvimTreeOpen",
            "NvimTreeFindFile",
            "NvimTreeFindFileToggle",
            "NvimTreeRefresh"
        },
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("nvim-tree").setup {}
        end
    },
    -- bufferline 插件
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        lazy = true,
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        -- enabled = false,
        config = function()
            require("bufferline").setup {}
        end
    },
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
                        preference = {"ruff-lsp","solargraph","bash-language-server"}
                    }
                }
            )
        end
    }
}
