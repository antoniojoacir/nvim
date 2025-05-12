return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup()
		require("mini.surround").setup()

		require("mini.move").setup({
			mappings = {
				left = "<S-left>",
				right = "<S-right>",
				down = "<S-down>",
				up = "<S-up>",

				-- Move current line in Normal mode
				line_left = "<S-left>",
				line_right = "<S-right>",
				line_down = "<S-down>",
				line_up = "<S-up>",
			},
		})

		local starter = require("mini.starter")

		starter.setup({
			evaluate_single = false,
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
				{
					name = "  Recent",
					action = ":Telescope oldfiles",
					section = " Actions ",
				},

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
}
