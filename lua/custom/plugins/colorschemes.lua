return {
	{
		"RRethy/base16-nvim",
		config = function()
			require("base16-colorscheme").with_config({
				telescope = true,
				indentblankline = true,
				notify = true,
				ts_rainbow = true,
				cmp = true,
				illuminate = true,
				dapui = true,
			})
		end,
	},
	{
		"akinsho/horizon.nvim",
		version = "*",
	},
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
					bold = true,
					italic = false,
					transparency = true,
				},
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
					keywords = { italic = true },
					sidebars = "transparent", -- style for sidebars, see below
					floats = "transparent", -- style for floating windows
				},
				on_colors = function(colors)
					colors.hint = colors.orange
					colors.error = "#ff0000"
				end,
				on_highlights = function(hl, c)
					local prompt = "#2d3149"
					hl.TelescopeNormal = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
					hl.TelescopeBorder = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopePromptNormal = {
						bg = prompt,
					}
					hl.TelescopePromptBorder = {
						bg = prompt,
						fg = prompt,
					}
					hl.TelescopePromptTitle = {
						bg = prompt,
						fg = prompt,
					}
					hl.TelescopePreviewTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopeResultsTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
				end,
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				undercurl = true,
				underline = true,
				italic = {
					bold = false,
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true,
				contrast = "hard",
				dim_inactive = false,
				transparent_mode = true,
			})
		end,
	},
	{
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				term_colors = true,
			})
		end,
	},
}
