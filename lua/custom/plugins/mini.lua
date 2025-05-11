return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup()
		require("mini.surround").setup()

		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })

		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

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
			footer = os.date("%B %d, %I:%M %p"),
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
			content_hooks = {
				starter.gen_hook.aligning("center", "center"),
			},
		})
	end,
}
