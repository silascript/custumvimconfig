--Enable (broadcasting) snippet capability for completion
-- 开启snippet功能
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
--
-- vim.lsp.config(
--     "cssls",
--     {
--         capabilities = capabilities
--     }
-- )

---@type vim.lsp.Config
return {
    cmd = {"vscode-css-language-server", "--stdio"},
    filetypes = {"css", "scss", "less"},
    init_options = {provideFormatter = true}, -- needed to enable formatting capabilities
    root_markers = {"package.json", ".git"},
    settings = {
        css = {validate = true},
        scss = {validate = true},
        less = {validate = true}
    }
}
