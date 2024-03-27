-- 基础类库插件
-- 这些插件是很多插件的基础插件

return {
    -- plenary.nvim
    {
        "nvim-lua/plenary.nvim"
    },
    -- guihua
    {
        "ray-x/guihua.lua",
        event = {"VimEnter"}
    }
}
