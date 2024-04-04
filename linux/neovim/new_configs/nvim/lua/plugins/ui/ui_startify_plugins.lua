return {
    -- dashboard
    {
        "nvimdev/dashboard-nvim",
        -- 开启或禁用此插件
        enabled = false,
        -- enabled = true,
        -- event = "VimEnter",
        event = "UIEnter",
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
        -- lazy = true,
        event = {"VimEnter"},
        config = function()
            local alpha = require "alpha"

            -- 不同的样式：dashboard startify
            -- 对样式什么都不配置，可以直接将样式加入到setup中
            -- require "alpha".setup(require "alpha.themes.startify".config)
            -- require "alpha".setup(require'alpha.themes.dashboard'.config)

            -- 对样式进行设置
            -- local dashboard = require "alpha.themes.dashboard"
            local startify = require "alpha.themes.startify"

            -- 设置 header
            -- header.val 接受的就是一个字典，以回车换行分隔的字符字典
            -- 所以将 figlet生成的 ASII字符以回车换行符切割
            -- startify.section.header.val = vim.split(vim.fn.system("figlet -f 'ANSI Shadow' 'HELLO NVIM' "), "\n")
            local header_str = vim.split(vim.fn.system("figlet -f 'ANSI Shadow' 'HELLO NVIM' "), "\n")
            -- local head = {
            -- startify.section.header.val = header_str
            startify.section.header.val = header_str
            startify.section.header.opts.position = "center"

            -- dashboard.section.header.val = {"NEOVIM"}

            -- mru 设置
            --禁用 mru 或 mru_cwd
            -- startify.section.mru_cwd.val = {{type = "padding", val = 0}}
            startify.section.mru.val = {{type = "padding", val = 0}}

            -- startify 布局
            -- local s_config = {
            --     layout = {
            --         {type = "padding", val = 1},
            --         head,
            --         {type = "padding", val = 1},
            --         startify.section.mru,
            --         {type = "padding", val = 1},
            --         foot
            --     }
            -- }

            -- 加载样式配置
            -- alpha.setup(dashboard.config)
            alpha.setup(startify.config)

            -- footer 设置
            -- 使用回调函数
            -- 因为需要获取插件相关信息
            vim.api.nvim_create_autocmd(
                "User",
                {
                    callback = function()
                        local stats = require("lazy").stats()
                        local plugins_count = stats.loaded .. "/" .. stats.count
                        -- 获取启动时长
                        local stms = math.floor(stats.startuptime * 100) / 100
                        local fline1 = " " .. plugins_count .. " plugins loaded in " .. stms .. "ms"

                        startify.section.footer.val = {
                            {
                                type = "text",
                                -- val = "footer",
                                val = fline1,
                                opts = {
                                    position = "center"
                                    -- hl = "Number"
                                }
                            }
                        }

                        pcall(vim.cmd.AlphaRedraw)
                    end
                }
            )

            -- alpha.setup(s_config)
        end
    }
}
