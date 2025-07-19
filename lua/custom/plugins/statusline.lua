return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local function lsp_name()
			local msg = "No Active Lsp"
			local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
			local clients = vim.lsp.get_clients({ bufnr = 0 })
			if #clients == 0 then
				return msg
			end
			for _, client in ipairs(clients) do
				if not client.config.filetypes or vim.tbl_contains(client.config.filetypes, buf_ft) then
					return client.name
				end
			end
			return msg
		end
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
					{ "branch" },
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
						local lsp = lsp_name()
						if encoding == "" then
							return vim.bo.filetype
						else
							return lsp .. " :: " .. vim.bo.filetype .. " :: " .. encoding
						end
					end,
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
