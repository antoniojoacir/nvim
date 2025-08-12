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
				diagnostics = "nvim_lsp" or "coc",
			},
		})
	end,
}
