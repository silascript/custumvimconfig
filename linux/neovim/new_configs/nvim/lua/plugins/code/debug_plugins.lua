-- debug 的插件集

return {
    -- trouble
    {
        "folke/trouble.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        -- cmd = {"Trouble", "TroubleToggle"},
        opts = {},
        cmd = {"Trouble"},
        lazy = true,
        event = {"BufReadPost"},
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)"
            },
            {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols (Trouble)"
            },
            {"<leader>o", "<cmd>Trouble symbols toggle win.position=right<cr>"},
            {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP Definitions / references / ... (Trouble)"
            },
            {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location List (Trouble)"
            },
            {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix List (Trouble)"
            },
            {"<leader>gr", "<cmd>Trouble lsp_references toggle<cr>"},
            {"<leader>gd", "<cmd>Trouble lsp_definitions toggle<cr>"},
            {"<leader>gi", "<cmd>Trouble lsp_implementations toggle<cr>"}
        } --keys
    } -- trouble
}
