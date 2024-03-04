

-- 配色相关的插件
return {

	-- one_monokai
	{
		"cpea2506/one_monokai.nvim",
	},


	-- material
	{
		"marko-cerovac/material.nvim",
		config = function()
			require("material").setup({
			})
		end,
	},

	-- gruvbox 
	{ 
		"ellisonleao/gruvbox.nvim", 
		-- priority = 1000 , 
		-- config = true, 
		config = function()
			require("gruvbox").setup({
				-- "hard" "soft" empty
				--contrast = "soft"
				-- contrast = ""
				contrast = "hard"
			})
		end,
	},

}

