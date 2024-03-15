return {
    -- dashboard
    {
        "nvimdev/dashboard-nvim",
        -- 开启或禁用此插件
        enabled = false,
        -- enabled = true,
        event = "VimEnter",
        config = function()
            -- 获取当前时间
            -- local dstr = os.date("%Y-%m-%d",os.time())
            require("dashboard").setup(
                {
                    -- theme = "doom",
                    theme = "hyper",
                    -- hide = {},
                    config = {
                        -- header = vim.fn.system('figlet -w 100 NVIM'),
                        -- header = vim.split(vim.fn.system('figlet -w 100 NVIM'),"\n"),
						head = {},
                        -- header = vim.split(vim.fn.system("figlet -f 'ANSI Shadow' 'NEOVIM' "), "\n"),
                        week_header = {
                            enable = false
                            -- concat = "test concat"
                            -- concat = dstr
                        },
                        -- center = {
                        -- { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
                        -- { action = "LazyExtras", desc = " Lazy Extras", icon = " ", key = "x" },
                        -- { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
                        -- { action = "qa", desc = " Quit", icon = " ", key = "q" },

                        -- 'letter' or 'number'
                        shortcut_type = "letter",
                        -- shortcut_type = "number",
                        shortcut = {
                            {desc = "󰊳 New Empty File", group = "@property", action = "enew", key = "e"},
                            {desc = "󰊳 Lazy", group = "@property", action = "Lazy", key = "l"}
                            -- { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                        },
                        -- 关闭 project
                        project = {enable = false}
                    } --config
                }
            )
        end,
        dependencies = {{"nvim-tree/nvim-web-devicons"}}
    },
    -- alpha-nvim
    {
        "goolord/alpha-nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        enabled = true,
        -- enabled = false,
        event = {"VimEnter"},
        config = function()
            require "alpha".setup(require "alpha.themes.startify".config)
            -- require "alpha".setup(require'alpha.themes.dashboard'.config)
        end
    },
}
