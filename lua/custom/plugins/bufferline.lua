return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				numbers = "ordinal",
				indicator = {
					style = "underline",
				},
				diagnostics = "nvim_lsp",
				--"slant" | "slope" | "thick" | "thin" | { "any", "any" },
				separator_style = { "", "" },
				style_preset = require("bufferline").style_preset.no_italic,
			},
		})
	end,
}
