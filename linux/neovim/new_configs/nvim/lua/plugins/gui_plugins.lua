

-- 界面相关的插件

return {
	
	-- dashboard 
	{
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		  require('dashboard').setup({
			-- theme = "doom",
			theme = "hyper",
			hide = {
				-- statusline = false,
			},
			config = {
				-- header = vim.fn.system('figlet -w 100 NVIM'),
				header = vim.split(vim.fn.system('figlet -w 100 NVIM'),"\n"),
				-- week_header = {
				-- 	enable = true
				-- },
				-- center = {
				-- { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
				-- { action = "LazyExtras", desc = " Lazy Extras", icon = " ", key = "x" },
				-- { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
				-- { action = "qa", desc = " Quit", icon = " ", key = "q" },

				shortcut = {
					-- { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
					{ desc = '󰊳 Lazy', group = '@property', action = 'Lazy', key = 'l' },
				},

			} --config

		  })
	  end,
	  dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},

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

	-- nvim-treesitter
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				
				ensure_installed = { 
					"c",
					"cpp",
					"bash",
					"perl", 
					"html", 
					"css", 
					"json",
					"vim", 
					"lua", 
					"go",
					"gomod",
					"gosum",
					"javascript", 
					"typescript", 
					"ruby", 
					"rust", 
					"java", 
					"groovy", 
					"gitignore", 
					"git_config", 
					"markdown", 
					"yaml", 
					"sql", 
					"toml",
					"php",
					"xml"
				},
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

