return {
	{ "akinsho/horizon.nvim", version = "*" },
	{ "RRethy/base16-nvim" },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				term_colors = true,
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "hard", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = true,
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = true, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					sidebars = "transparent", -- style for sidebars, see below
					floats = "transparent", -- style for floating windows
				},
			})
		end,
	},
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				highlight_groups = {
					TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

					TelescopeBorder = { fg = "highlight_high", bg = "none" },
					TelescopeNormal = { bg = "none" },
					TelescopePromptNormal = { bg = "base" },
					TelescopeResultsNormal = { fg = "subtle", bg = "none" },
					TelescopeSelection = { fg = "text", bg = "base" },
					TelescopeSelectionCaret = { fg = "rose", bg = "rose" },

					TelescopeTitle = { fg = "base", bg = "love" },
					TelescopePromptTitle = { fg = "base", bg = "pine" },
					TelescopePreviewTitle = { fg = "base", bg = "iris" },

					TelescopePromptBorder = { fg = "surface", bg = "surface" },
				},
				-- dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},

				styles = {
					bold = true,
					italic = false,
					transparency = false,
				},
			})
		end,
	},
}
