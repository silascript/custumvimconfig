-- telescope 扩展插件

return {
    -- file-browser
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}
    },

	-- fzf-native
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        dependencies = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        build = "make"
    }
}
