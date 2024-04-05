--          ╭─────────────────────────────────────────────────────────╮
--          │					界面相关的插件                        │
--          ╰─────────────────────────────────────────────────────────╯
--

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
    }
}
