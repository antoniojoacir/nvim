return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			term_colors = true,
		})
	end,
}
