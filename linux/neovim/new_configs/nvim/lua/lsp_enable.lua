-- lsp 的配置
-- nvim-lspconfig
-- 新版本的 nvim 已经不需要 这个插件了
-- 启动lsp
vim.lsp.enable({
	"clangd",
	"lua_ls",
	"ts_ls",
	"jdtls",
	"kotlin_lsp",
	"gopls",
	"pyright",
	"ruff",
	"bashls",
	"rust_analyzer",
	"cssls",
	"html",
	"emmet_language_server",
	"solargraph",
})
