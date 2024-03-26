-- 小工具的插件集

return {
    -- which-key
    {
        "folke/which-key.nvim",
        enabled = false,
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
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
        envent = {"BufPost"},
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
