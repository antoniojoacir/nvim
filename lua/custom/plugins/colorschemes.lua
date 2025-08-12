return {
	{ "RRethy/base16-nvim" },
	{ "akinsho/horizon.nvim" },
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				highlight_groups = {
					TelescopeBorder = { fg = "highlight_high", bg = "none" },
					TelescopeNormal = { bg = "none" },
					TelescopePromptNormal = { bg = "base" },
					TelescopeResultsNormal = { fg = "subtle", bg = "none" },
					TelescopeSelection = { fg = "text", bg = "base" },
					TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
				},
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,
				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},
				styles = {
					bold = false,
					italic = false,
					transparency = true,
				},
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function()
			require("tokyonight").setup({
				style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = true, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					comments = { italic = false },
					keywords = { italic = true },
					sidebars = "transparent", -- style for sidebars, see below
					floats = "transparent", -- style for floating windows
				},
			})
		end,
	},
}
