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
						section = " Actions ",
					},
					{
						name = "  Open Blank File",
						action = ":enew",
						section = " Actions ",
					},
					{
						name = " 󰈞 Find file",
						action = ":Telescope find_files",
						section = " Actions ",
					},

					starter.sections.recent_files(5, true),

					{
						name = " 󰒲 Lazy Update",
						action = ":Lazy update",
						section = " Actions ",
					},
					{
						name = "  Quit",
						action = ":q!",
						section = " Actions ",
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
