-- git相关的插件集
--
return {
    {
        "lewis6991/gitsigns.nvim",
		lazy = true,
        event = {"VeryLazy"},
        config = function()
            require("gitsigns").setup()
        end
    },
}
