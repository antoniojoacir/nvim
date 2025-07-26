return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				component_separators = "",
				section_separators = "",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						"branch",
						icon = "",
					},
					{
						"diff",
						symbols = { added = " ", modified = "  ", removed = "  " },
					},
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
					},
				},
				lualine_c = { "filename" },
				lualine_x = {
					function()
						local filetype = vim.bo.filetype
						local icon = require("nvim-web-devicons").get_icon_by_filetype(filetype)
						if vim.o.fileencoding == "" then
							return vim.bo.filetype
						else
							local clients = vim.lsp.get_clients({ bufnr = 0 })
							if #clients == 0 then
								return "No LSP"
							end

							local name = {}
							for _, client in ipairs(clients) do
								table.insert(name, client.name)
							end
							return table.concat(name, ", ")
								.. " :: "
								.. icon
								.. " "
								.. filetype
								.. " :: "
								.. vim.o.fileencoding
						end
					end,
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
