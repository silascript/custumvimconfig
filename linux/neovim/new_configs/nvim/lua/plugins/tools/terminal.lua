--          ╭─────────────────────────────────────────────────────────╮
--          │					Terminal 插件                         │
--          ╰─────────────────────────────────────────────────────────╯

return {
    -- toggleterm
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        lazy = true,
        -- enabled = false,
        -- cmd = {
        --     "ToggleTerm"
        -- },
        event = {"BufReadPost"},
        config = function()
            local Terminal = require("toggleterm.terminal").Terminal
            -- 配置 lazygit
            local lazygit = Terminal:new({cmd = "lazygit", hidden = true})
            function _lazygit_toggle()
                lazygit:toggle()
            end
            require("toggleterm").setup(
                {
                    -- lazygit
                    vim.api.nvim_set_keymap(
                        "n",
                        "<leader>lg",
                        "<cmd>lua _lazygit_toggle()<CR>",
                        {noremap = true, silent = true}
                    )
                }
            )
        end
    },
    -- flatten
    {
        "willothy/flatten.nvim",
        lazy = true,
        -- enabled = false,
        -- cmd = {""},
        event = {"BufReadPost", "BufNewFile"},
        config = function()
            require("flatten").setup(
                {
                    window = {open = "alternate"}
                }
            )
        end
    }
}
