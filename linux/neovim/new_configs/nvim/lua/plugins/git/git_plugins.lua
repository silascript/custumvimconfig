-- git相关的插件集
--
return {
    -- gitsigns
    {
        "lewis6991/gitsigns.nvim",
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            require("gitsigns").setup()
        end
    },
    -- deffview

    {
        "sindrets/diffview.nvim",
        lazy = true,
        event = {"BufReadPost"},
    }
}
