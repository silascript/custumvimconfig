return {
        -- node
        {
            "shaunsingh/nord.nvim",
            -- priority = 1000,
            lazy = true,
            -- enabled = false,
            enabled = true,
            config = function()
                require("nord").set(
                    {
                        vim.cmd.colorscheme "nord"
                    }
                )
            end
        } -- nord
}
