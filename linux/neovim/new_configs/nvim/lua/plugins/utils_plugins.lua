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
    {
        "derektata/lorem.nvim",
        event = "VeryLazy",
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
    }
}
