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
        cmd = {
            "ToggleTerm"
        },
        config = function()
            require("toggleterm").setup({})
        end
    },
    -- flatten
    {
        "willothy/flatten.nvim",
        lazy = true,
		enabled = false,
        -- cmd = {""},
        config = function()
            require("flatten").setup({})
        end
    }
}
