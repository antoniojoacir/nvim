return {
	{ "RRethy/base16-nvim" },
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				dim_inactive_windows = false,
				extend_background_behind_borders = false,

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

				highlight_groups = {
					TelescopeBorder = { fg = "overlay", bg = "none" },
					TelescopeNormal = { fg = "subtle", bg = "none" },
					TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },
					TelescopeSelection = { fg = "text", bg = "highlight_med" },
					TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },

					TelescopeTitle = { fg = "base", bg = "love" },
					TelescopePromptTitle = { fg = "base", bg = "pine" },
					TelescopePreviewTitle = { fg = "base", bg = "iris" },

					TelescopePromptNormal = { fg = "text", bg = "none" },
					TelescopePromptBorder = { fg = "surface", bg = "none" },
				},
			})

			vim.cmd([[colorscheme rose-pine]])
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = false },
					keywords = { italic = true },
					sidebars = "transparent",
					floats = "transparent",
				},
			})
		end,
	},
}
