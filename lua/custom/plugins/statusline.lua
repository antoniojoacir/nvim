return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
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
						-- symbols = { added = " ", modified = "󰝤 ", removed = " " },
					},
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						-- symbols = { error = "󰅚 ", warn = "󰀪 ", info = "󰋽 " },
					},
				},
				lualine_c = { "filename" },
				lualine_x = {
					function()
						local encoding = vim.o.fileencoding
						if encoding == "" then
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
							return table.concat(name, ",") .. " :: " .. vim.bo.filetype .. " :: " .. encoding
						end
					end,
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
