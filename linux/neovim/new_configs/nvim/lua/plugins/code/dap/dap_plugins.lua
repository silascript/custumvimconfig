--          ╭─────────────────────────────────────────────────────────╮
--          │					DAP 相关插件                          │
--          ╰─────────────────────────────────────────────────────────╯

return {
    -- nvim-dap
    {
        "mfussenegger/nvim-dap",
        lazy = true,
        event = {"BufReadPost"},
        keys = {
            --
            {
                "<f5>",
                function()
                    require("dap").continue()
                end,
                desc = "launch/continue"
            },
            -- 单步
            {
                "<f10>",
                function()
                    require("dap").step_over()
                end,
                desc = "单步调试"
            },
            -- 单步进入
            {
                "<c-f10>",
                function()
                    require("dap").step_info()
                end,
                desc = "单步进入"
            },
            -- 步出
            {
                "c-f",
                function()
                    require("dap").step_out()
                end
            },
            -- 终止
            {
                "c-f5",
                function()
                    require("dap").terminate()
                end,
                desc = "终止程序"
            },
            {
                "<leader>bp",
                function()
                    require("dap").toggle_breakpoint()
                end,
                desc = "设置取消断点"
            }
        },
        config = function()
            local dap = require("dap")

            -- 各语言适配器指定及配置
            dap.adapters.gdb = {
                type = "executable",
                command = "gdb",
                args = {"-i", "dap"}
            }

            -- go delve
            dap.adapters.delve = {
                type = "server",
                port = "${port}",
                executable = {
                    command = "dlv",
                    args = {"dap", "-l", "127.0.0.1:${port}"}
                }
            }

            -- 各语言配置
            -- c
            dap.configurations.c = {
                {
                    name = "Launch file",
                    type = "gdb",
                    request = "launch",
                    -- gdbpath = function()
                    --     return "/usr/bin/gdb"
                    -- end,
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                    end,
                    cwd = "${workspaceFolder}",
                    stopAtEntry = true
                    -- stopAtBeginningOfMainSubprogram = false
                }
            }

            -- cpp
            dap.configurations.cpp = dap.configurations.c

            -- golang
            dap.configurations.go = {
                {
                    type = "delve",
                    name = "Debug",
                    request = "launch",
                    program = "${file}"
                },
                {
                    type = "delve",
                    name = "Debug test", -- configuration for debugging test files
                    request = "launch",
                    mode = "test",
                    program = "${file}"
                },
                -- works with go.mod packages and sub packages
                {
                    type = "delve",
                    name = "Debug test (go.mod)",
                    request = "launch",
                    mode = "test",
                    program = "./${relativeFileDirname}"
                }
            } -- golang
        end
    }, -- nvim-dap
    -- dap-ui
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
        lazy = true,
        event = {"BufReadPost"},
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup({})

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    }
}
