

-- 基础的插件集

return {

	--成对符号自动补全
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end	

	}


}

