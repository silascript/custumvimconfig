-- 状态栏相关的插件
return {
    -- lualine 插件
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        lazy = true,
        event = {"BufReadPost", "BufAdd", "BufNewFile"},
        -- event = {"VimEnter"},
        -- event = {"UIEnter"},
        -- event = {"VeryLazy"},
        -- enabled = false,
        enabled = true,
        config = function()
            require("lualine").setup {
                sections = {
                    lualine_c = {
                        "filename",
                        -- lsp-progress
                        function()
                            return require("lsp-progress").progress()
                        end
                    }
                },
                options = {
                    -- globalstatus = true,

                    -- 设置样式
                    -- 使用 auto 意味着状态栏配色使用全局配色
                    -- 即使用 vim.cmd.colorscheme 指定的配色
                    theme = "auto"
                    -- theme = "nord"
                    -- theme = "gruvbox",
                    -- theme = "ayu_mirage",
                    -- theme = "everforest",
                    -- theme = "material",
                    -- theme = "onedark",
                    -- theme = "OceanicNext",
                    -- section_separators = "",
                    -- component_separators = ""
                    -- section_separators = { left = '', right = '' },
                    -- component_separators = { left = '', right = '' }

                    -- component_separators = { left = '', right = ''},
                    -- section_separators = { left = '', right = ''},

                    -- refresh = {                  -- sets how often lualine should refresh it's contents (in ms)
                    -- 	statusline = 1000,
                    -- },
                } -- options
            }

            -- 监听 lsp-progress 事件并刷新 lualine
            vim.api.nvim_create_augroup("lualine_augroup", {clear = true})
            vim.api.nvim_create_autocmd(
                "User",
                {
                    group = "lualine_augroup",
                    pattern = "LspProgressStatusUpdated",
                    callback = require("lualine").refresh
                }
            )
        end
    },
    -- lsp-progress.nvim
    {
        "linrongbin16/lsp-progress.nvim",
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            require("lsp-progress").setup(
                {
                    client_format = function(client_name, spinner, series_messages)
                        if #series_messages == 0 then
                            return nil
                        end
                        return {
                            name = client_name,
                            body = spinner .. " " .. table.concat(series_messages, ", ")
                        }
                    end,
                    format = function(client_messages)
                        --- @param name string
                        --- @param msg string?
                        --- @return string
                        local function stringify(name, msg)
                            return msg and string.format("%s %s", name, msg) or name
                        end

                        local sign = "" -- nf-fa-gear \uf013
                        local lsp_clients = vim.lsp.get_active_clients()
                        local messages_map = {}
                        for _, climsg in ipairs(client_messages) do
                            messages_map[climsg.name] = climsg.body
                        end

                        if #lsp_clients > 0 then
                            table.sort(
                                lsp_clients,
                                function(a, b)
                                    return a.name < b.name
                                end
                            )
                            local builder = {}
                            for _, cli in ipairs(lsp_clients) do
                                if type(cli) == "table" and type(cli.name) == "string" and string.len(cli.name) > 0 then
                                    if messages_map[cli.name] then
                                        table.insert(builder, stringify(cli.name, messages_map[cli.name]))
                                    else
                                        table.insert(builder, stringify(cli.name))
                                    end
                                end
                            end
                            if #builder > 0 then
                                return sign .. " " .. table.concat(builder, ", ")
                            end
                        end
                        return ""
                    end
                }
            )
        end
    },
    -- lualine-lsp-progress
    {
        "arkav/lualine-lsp-progress",
        lazy = true,
        enabled = false,
        event = {"BufReadPost"}
    },
    -- linefly
    {
        "bluz71/nvim-linefly",
        enabled = false,
        -- enabled = true,
        config = function()
            vim.g.linefly_options = {
                with_lsp_status = false,
                -- separator_symbol = 'U+276F'
                separator_symbol = "❮"
            }
        end
    },
    -- nvim-hardline
    {
        "ojroques/nvim-hardline",
        enabled = false,
        -- enabled = true,
        config = function()
            require("hardline").setup({})
        end
    },
    -- yasl
    {
        "brianaung/yasl.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        -- event = "VimEnter",
        enabled = false,
        -- enabled = true,
        config = function()
            require("yasl").setup({})
        end
    }
}
