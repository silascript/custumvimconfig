-- 格式化的插件集

return {
	-- formatter.nvim
	{
		"mhartington/formatter.nvim",
		-- event = {"CmdlineEnter"},
		lazy = true,
		event = { "BufReadPost" },
		-- enabled=false,
		config = function()
			-- 引用formatter自带的工具
			local util = require("formatter.util")
			require("formatter").setup({
				filetype = {
					c = {
						require("formatter.filetypes.c").clangformat,
					},
					lua = {
						-- require("formatter.filetypes.lua").luafmt
						require("formatter.filetypes.lua").stylua,
					},
					go = {
						require("formatter.filetypes.go").gofmt,
					},
					cpp = {
						require("formatter.filetypes.cpp").clangformat,
					},
					rust = {
						require("formatter.filetypes.rust").rustfmt,
					},
					sh = {
						require("formatter.filetypes.sh").shfmt,
					},
					vue = { require("formatter.filetypes.vue").prettier },
					css = { require("formatter.filetypes.css").prettier },
					html = { require("formatter.filetypes.html").prettier },
					javascript = { require("formatter.filetypes.javascript").prettier },
					typescript = { require("formatter.filetypes.typescript").prettier },
					markdown = { require("formatter.filetypes.markdown").prettier },
					-- markdown = { require("formatter.filetypes.markdown").mdformat },
					-- markdown = {
					--     -- 使用 mdformat来格式化
					--     function()
					--         return {
					--             exe = "mdformat",
					--             args = {vim.fn.shellescape(vim.api.nvim_buf_get_name(0))}
					--         }
					--     end
					-- },
					json = { require("formatter.filetypes.json").prettier },
					toml = { require("formatter.filetypes.toml").taplo },
					less = {
						function()
							return {
								exe = "prettier",
								-- args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
								args = { "--stdin-filepath", util.escape_path(util.get_current_buffer_file_path()) },
								stdin = true,
							}
						end,
					},
					python = {
						-- require("formatter.filetypes.python").autopep8
						require("formatter.filetypes.python").black,
						-- require("formatter.filetypes.python").ruff
					},
					java = {
						require("formatter.filetypes.java").google_java_format,
					},
					kotlin = {
						require("formatter.filetypes.kotlin").ktlint,
					},
					dart = {
						require("formatter.filetypes.dart").dartformat,
					},
					sql = {
						-- https://github.com/sqlfluff/sqlfluff
						-- require("formatter.filetypes.sql").sqlfluff,

						-- https://github.com/sql-formatter-org/sql-formatter
						-- require("formatter.filetypes.sql").sql_formatter,

						function()
							-- sql格式化器可执行程序的名称
							-- local formatter_execn="sqlfluff",
							local formatter_execn = "sql-formatter"
							-- 当前文件的sql方言
							local sql_dialect = "sql"

							-- 不同sql格式化器使用不同的处理
							if formatter_execn ~= "sql-formatter" then
								vim.ui.input({
									prompt = "请输入sql的方言类型：",
									default = sql_dialect,
								}, function(in_sql)
									sql_dialect = in_sql
								end)
								-- vim.print(sql_dialect)
								return {
									-- exe = "sqlfluff",
									exe = formatter_execn,
									args = {
										string.format("format --dialect %s", sql_dialect),
										util.escape_path(util.get_current_buffer_file_path()),
									},
									stdin = true,
								}
							else -- use sqlfluff
								-- vim.ui.input({
								-- 	prompt = "请输入sql的方言类型：",
								-- 	default = sql_dialect,
								-- 	completion = { "sql", "mysql", "mariadb", "plsql", "postgresql", "spark" },
								-- }, function(in_sql)
								-- 	sql_dialect = in_sql
								-- end)
								local commands = "sqlfluff dialects | awk '/:/{print $1}{FS=\":\"}'"
								-- local commands = "ls -al"
								local c_result = io.popen(commands)

								-- 方言数组
								local dialect_list = {}
								-- { "mysql", "sql", "mariadb", "plsql", "postgresql", "t-sql", "spart" }

								-- 将每一行数据添加进数组中
								for line in c_result:lines() do
									table.insert(dialect_list, line)
								end

								-- print(dialect_list)
								-- 关闭
								c_result.close()

								vim.ui.select(dialect_list, {
									prompt = "选择一个SQL方言：",
									format_item = function(s_item)
										return s_item
									end,
								}, function(s_item)
									if s_item then
										-- 赋值
										sql_dialect = s_item
									end
								end)

								-- vim.print(sql_dialect)
								return {
									-- exe = "sql-formatter",
									exe = formatter_execn,
									args = {
										string.format("-l %s", sql_dialect),
										util.escape_path(util.get_current_buffer_file_path()),
									},
									stdin = true,
								}
							end
						end,
					},
					["*"] = {
						-- filetype
						-- 去除尾部空白
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				}, --filetype
			})
		end,
	},
}
