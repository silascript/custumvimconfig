-- 搜索器插件

return {
    -- fzf-lua
    {
        "ibhagwan/fzf-lua",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        event = {"VimEnter"},
        config = function()
            require("fzf-lua").setup(
                {
                    -- file
                    vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", {silent = true}),
                    -- buffer
                    vim.keymap.set("n", "<c-e>", "<cmd>lua require('fzf-lua').buffers()<CR>", {silent = true}),
                    -- path
                    vim.keymap.set(
                        {"n", "v", "i"},
                        "<C-x><C-f>",
                        function()
                            require("fzf-lua").complete_path()
                        end,
                        {silent = true, desc = "Fuzzy complete path"}
                    )
                }
            )
        end
    } -- fzf-lua
}
