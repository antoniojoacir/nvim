return {
	{
		"echasnovski/mini.nvim",
		version = false,
	},
	{
		"echasnovski/mini.icons",
		version = false,
		config = function()
			require("mini.icons").setup({})
		end,
	},
	{
		"echasnovski/mini.ai",
		version = false,
		config = function()
			require("mini.ai").setup({})
		end,
	},
	{
		"echasnovski/mini.surround",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("mini.surround").setup({})
		end,
	},
	{
		"echasnovski/mini.tabline",
		version = false,
		config = function()
			require("mini.tabline").setup({})
		end,
	},
	{
		"echasnovski/mini.move",
		version = false,
		config = function()
			require("mini.move").setup({
				mappings = {
					left = "<S-left>",
					right = "<S-right>",
					down = "<S-down>",
					up = "<S-up>",

					line_left = "<S-left>",
					line_right = "<S-right>",
					line_down = "<S-down>",
					line_up = "<S-up>",
				},
			})
		end,
	},
}
