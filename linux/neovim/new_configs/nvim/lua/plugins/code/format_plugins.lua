-- 格式化的插件集

return {
    -- formatter.nvim
    {
        "mhartington/formatter.nvim",
		-- event = {"CmdlineEnter"},
		lazy = true,
		event = { "BufReadPost" },
        config = function()
            require("formatter").setup(
                {
                    filetype = {
                        c = {
                            require("formatter.filetypes.c").clangformat
                        },
                        lua = {
                            require("formatter.filetypes.lua").luafmt
                        },
                        go = {
                            require("formatter.filetypes.go").gofmt
                        },
                        cpp = {
                            require("formatter.filetypes.cpp").clangformat
                        },
                        rust = {
                            require("formatter.filetypes.rust").rustfmt
                        },
                        sh = {
                            require("formatter.filetypes.sh").shfmt
                        },
                        vue = {require("formatter.filetypes.vue").prettier},
                        css = {require("formatter.filetypes.css").prettier},
                        html = {require("formatter.filetypes.html").prettier},
                        javascript = {require("formatter.filetypes.javascript").prettier},
                        typescript = {require("formatter.filetypes.typescript").prettier},
                        markdown = {require("formatter.filetypes.markdown").prettier},
                        json = {require("formatter.filetypes.json").prettier},
                        less = {
                            function()
                                return {
                                    exe = "prettier",
                                    args = {"--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0))},
                                    stdin = true
                                }
                            end
                        },
                        python = {
                            -- require("formatter.filetypes.python").autopep8
                            require("formatter.filetypes.python").black
                            -- require("formatter.filetypes.python").ruff
                        },
                        ["*"] = {
                            -- filetype
                            -- 去除尾部空白
                            require("formatter.filetypes.any").remove_trailing_whitespace
                        }
                    } --filetype
                }
            )
        end
    }
}
