return {
	{
		"echasnovski/mini.nvim",
		version = false,
	},
	-- {
	-- 	"echasnovski/mini.icons",
	-- 	version = false,
	-- 	config = function()
	-- 		require("mini.icons").setup({})
	-- 	end,
	-- },
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
	{
		"echasnovski/mini.files",
		config = function()
			local MiniFiles = require("mini.files")
			MiniFiles.setup({
				mappings = {
					close = "\\",
					go_in = "<CR>", -- Map both Enter and L to enter directories or open files
					go_in_plus = "L",
					go_out = "-",
					go_out_plus = "H",
				},
			})

			vim.keymap.set("n", "\\", function()
				local success = pcall(function()
					local file_path = vim.api.nvim_buf_get_name(0)
					if file_path == "" then
						error("No buffer")
					end
					MiniFiles.open(file_path, false)
					MiniFiles.reveal_cwd()
				end)
				if not success then
					MiniFiles.open()
				end
			end, { desc = "Toggle into currently opened file" })
		end,
	},
	{
		"echasnovski/mini.hipatterns",
		version = false,
		config = function()
			local hipatterns = require("mini.hipatterns")
			hipatterns.setup({
				highlighters = {
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			})
		end,
	},
}
