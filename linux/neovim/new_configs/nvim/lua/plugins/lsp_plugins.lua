-- lsp 的插件集

return {

	-- nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
			--require('lspconfig').gopls.setup{}
			--require('lspconfig').gopls.setup{}
			lspconfig.clangd.setup{}
			lspconfig.bashls.setup{}
			lspconfig.lua_ls.setup{}
			lspconfig.html.setup{}
			lspconfig.cssls.setup{}
			lspconfig.gopls.setup{}
			lspconfig.tsserver.setup{}
			-- lspconfig.jdtls.setup{ capabilities = capabilities }
			lspconfig.jdtls.setup{}
			lspconfig.ruff_lsp.setup{}
			lspconfig.solargraph.setup{}
			lspconfig.rust_analyzer.setup {
			  settings = {
				['rust-analyzer'] = {},
			  },
			}
		end,

	},


	-- lspsaga
	-- {
	-- 	'nvimdev/lspsaga.nvim',
	-- 	config = function()
	-- 		require('lspsaga').setup({})
	-- 	end,
	-- },


}
