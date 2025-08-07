return {
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup({})

		require("mini.tabline").setup({})

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

		require("mini.files").setup({
			mappings = {
				close = "\\",
				go_in = "<CR>",
				go_in_plus = "L",
				go_out = "-",
				go_out_plus = "H",
			},

			vim.keymap.set("n", "\\", function()
				local success = pcall(function()
					local file_path = vim.api.nvim_buf_get_name(0)
					if file_path == "" then
						error("No buffer")
					end
					require("mini.files").open(file_path, false)
					require("mini.files").reveal_cwd()
				end)
				if not success then
					require("mini.files").open()
				end
			end, { desc = "Toggle file manager" }),
		})

		require("mini.hipatterns").setup({
			highlighters = {
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})
	end,
}
