-- 小工具的插件集

return {
    -- which-key
    {
        "folke/which-key.nvim",
        lazy = true,
        -- enabled = false,
        -- event = "VeryLazy",
        cmd = {"WhichKey"},
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({})
        end
    },
    -- nvim-notify
    {
        "rcarriga/nvim-notify",
        lazy = true,
        event = {"BufReadPre", "BufNewFile"},
        config = function()
            local notify = require("notify")
            notify.setup(
                {
                    -- 样式
                    -- default minimal simple compact wrapped-compact
                    render = "default",
                    -- 动画样式
                    -- slide fade static fade_in_slide_out
                    stages = "slide",
					on_open = nil,
					on_close = nil,
					background_colour = "Normal",
					-- 长宽
                    max_width = math.floor(vim.api.nvim_win_get_width(0) / 2),
                    max_height = math.floor(vim.api.nvim_win_get_height(0) / 4),
					-- 响应级别
					level = "TRACE",
                    -- 信息停留时长
                    timeout = 3000
                }
            )
            -- 将信息重定向到notify中显示
            vim.notify = notify
        end
    },
    -- lorem.nvim
    {
        "derektata/lorem.nvim",
        event = "VeryLazy",
        enabled = false,
        config = function()
            require("lorem").setup(
                {
                    -- 句子长度
                    -- mixed mixedLong mixedShort long medium short
                    sentenceLength = "medium",
                    -- 逗号出现的频率
                    -- 0~1
                    -- 0 禁止逗号；1 是三个单词一个逗号
                    comma = 0.2
                }
            )
        end
    },
    -- nvim-colorizer.lua
    -- css 等颜色代码高亮
    {
        "NvChad/nvim-colorizer.lua",
        -- event = { "VeryLazy" },
        -- event = { "BufReadPost" },
        ft = {
            "css",
            "sass",
            "html",
            "javascript"
        },
        enabled = true,
        config = function()
            require("colorizer").setup(
                {
                    -- 允许显示的文件类型
                    -- 还能单独谁每个文件类型设置不同的显示样式
                    -- 如果没有设置样式，将使用默认样式设置，即 user_default_options选项设置的样式
                    filetypes = {
                        "css",
                        "sass",
                        "javascript",
                        "html"
                        -- html = {mode = "foreground"}
                    },
                    -- 默认显示样式设置
                    user_default_options = {
                        -- 高亮的样式
                        -- background 代码背景色显示相应的颜色 这是默认
                        -- foreground 代码字体颜色显示相应的颜色
                        -- virtualtext 代码添加自定义虚拟文本以显示相应的颜色
                        -- virtualtext 还能自定义不同的 Unicode 文字。默认是 virtualtext = "■"
                        -- mode = "foreground"
                        -- https://symbl.cc/ 或 https://www.fuhaoku.net/ 找图形
                        -- virtualtext = "◉",
                        virtualtext = "●",
                        mode = "virtualtext"
                    }
                }
            )
        end
    }
}
