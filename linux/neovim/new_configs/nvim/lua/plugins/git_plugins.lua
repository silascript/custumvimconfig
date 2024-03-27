-- git相关的插件集
--
return {
    {
        "lewis6991/gitsigns.nvim",
        -- event = {"BufReadPost"},
        event = {"VeryLazy"},
        config = function()
            require("gitsigns").setup()
        end
    },
}
