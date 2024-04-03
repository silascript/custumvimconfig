--  加载基础配置
require("basic")
-- 加载lazy.nvim 入口文件
require("laziness")

-- 加载配色配置
-- 配色是lazy.nvim管理的
-- 所以配色配置得在lazy.nvim加载后才加载
require("settings_colorscheme")

