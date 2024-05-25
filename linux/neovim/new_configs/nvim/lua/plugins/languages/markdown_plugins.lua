return {
    -- headlines
    -- 标题颜色
    {
        "lukas-reineke/headlines.nvim",
        dependencies = {"nvim-treesitter/nvim-treesitter"},
        -- lazy = true,
        ft = {"markdown"},
		enabled = false,
        config = function()
            require("headlines").setup(
                {
                    markdown = {
                        fat_headlines = false
                    }
                }
            )
        end
    }
}
