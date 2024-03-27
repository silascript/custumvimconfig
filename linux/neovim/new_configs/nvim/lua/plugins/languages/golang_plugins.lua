-- golang相关的插件

return {
	-- go.nvim
    {
        "ray-x/go.nvim",
        dependencies = {
            -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter"
        },
		-- event = {"BufReadPost *.go","BufReadPost *.mod"},
        config = function()
            require("go").setup()
        end,
        ft = {"go", "gomod"}
    }
}
