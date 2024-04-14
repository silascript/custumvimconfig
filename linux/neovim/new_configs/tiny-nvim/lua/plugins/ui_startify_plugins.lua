return {
    -- alpha-nvim
    {
        "goolord/alpha-nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        enabled = true,
        -- enabled = false,
		-- lazy = true,
        event = {"BufEnter"},
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
            -- 使用到了figlet
            startify.section.header.val = vim.split(vim.fn.system("figlet -f 'ANSI Shadow' 'TINY-NVIM' "), "\n")
            -- dashboard.section.header.val = {"NEOVIM"}

            -- 加载样式配置
            -- alpha.setup(dashboard.config)
            alpha.setup(startify.config)
        end
    }
}
