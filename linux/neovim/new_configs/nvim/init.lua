
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--  加载基础配置
require("basic")

-- 使用lazy 加载所需的插件
require("lazy").setup({
	{ import = "plugins" },
	-- 界面相关的插件
	{ import = "plugins/ui" },
	-- telescope相关的插件
	{ import = "plugins/telescope" },
	-- 各种编程语言相关的插件
	{ import = "plugins/languages" },
	-- { import = "plugins/*/" },

})



-- 加载配色配置
-- require("settings_colorscheme")


