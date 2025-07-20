return {
	{
		"echasnovski/mini.starter",
		version = false,
		config = function()
			local starter = require("mini.starter")

			starter.setup({
				header = table.concat({
					[[
					 ,-.       _,---._ __  / \
					/  )    .-'       `./ /   \
				 (  (   ,'            `/    /|
					\  `-"             \'\   / |
					 `.              ,  \ \ /  |
						/`.          ,'-`----Y   |
					 (            ;        |   '
					 |  ,-.    ,-'         |  /
					 |  | (   |            | /
					 )  |  \  `.___________|/
					 `--'   `--'
				]],
				}, "\n"),
				items = {
					{
						name = "  Browse files",
						action = ":lua require('oil').toggle_float()",
						section = "",
					},
					{
						name = "  Open Blank File",
						action = ":enew",
						section = "",
					},
					{
						name = " 󰈞 Find file",
						action = ":Telescope find_files",
						section = "",
					},

					{
						name = "  Recent",
						action = ":Telescope oldfiles",
						section = "",
					},
					{
						name = " 󰒲 Lazy Update",
						action = ":Lazy update",
						section = "",
					},
					{
						name = "  Quit",
						action = ":q!",
						section = "",
					},
				},

				footer = os.date("%B %d, %I:%M %p"),
				content_hooks = {
					starter.gen_hook.aligning("center", "center"),
				},
			})
		end,
	},
}
