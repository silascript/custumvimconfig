

-- 界面相关的插件

return {
	
	-- nvim-tree

	{
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("nvim-tree").setup {}
        end
    },


	-- lualine 插件
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function ()
			require('lualine').setup {
				options = { theme = 'gruvbox' }
			}	
		end,
	},
	
	-- bufferline 插件
	{
		'akinsho/bufferline.nvim', 
		version = "*", 
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require("bufferline").setup{}
		end,
	},


	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				

					ensure_installed = { "c","cpp", "bash", "perl", "html", "css", "json","vim", "lua", "go","gomod","gosum","javascript", "typescript", "ruby", "rust", "java", "groovy", "gitignore", "git_config", "markdown", "yaml", "sql", "toml","php", "xml" },
					highlight = { 
						enable = true,
						additional_vim_regex_highlighting = false
					},
					-- indent = { enable = true },
					-- 不同括号颜色区分
					rainbow = {
						enable = true,
						extended_mode = true,
						max_file_lines = nil,
					},

			}) -- require().setup
			 
		end,
	},

}

