return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = "",
				section_separators = "",
				theme = "auto",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{ "branch", icon = "" },
					{ "diff", symbols = { added = " ", modified = " ", removed = " " } },
				},
				lualine_c = {
					{ "filename" },
				},
				lualine_x = {
					{ "diagnostics", sources = { "nvim_diagnostic" }, update_in_insert = true },
					{
						function()
							local clients = vim.lsp.get_clients({ bufnr = 0 })
							if #clients == 0 then
								return ""
							end

							local name = {}
							for _, client in ipairs(clients) do
								table.insert(name, client.name)
							end
							return " " .. table.concat(name, " ")
						end,
					},
					{ "filetype" },
					{
						function()
							if vim.o.fileencoding == "" then
								return ""
							end
							return vim.o.fileencoding
						end,
					},
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
