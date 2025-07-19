return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},

	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		render_modes = true,
		quote = { repeat_linebreak = true },
		win_options = {
			showbreak = {
				default = "",
				rendered = "  ",
			},
			breakindent = {
				default = false,
				rendered = true,
			},
			breakindentopt = {
				default = "",
				rendered = "",
			},
		},
		checkbox = {
			unchecked = { icon = " ✘ " },
			checked = { icon = " ✔ " },
			custom = {
				todo = { rendered = " 󰥔 " },
				important = {
					raw = "[~]",
					rendered = " 󰓎 ",
					highlight = "DiagnosticWarn",
				},
			},
		},
		code = {
			sign = false,
			width = "block",
			left_pad = 2,
			right_pad = 4,
		},
		dash = {
			enabled = true,
			render_modes = false,
			icon = "─",
			width = "full",
			left_margin = 0,
			highlight = "RenderMarkdownDash",
		},
		heading = {
			position = "inline",
			sign = true,
			border = true,
			border_virtual = true,
		},
		indent = { enabled = true },
		link = {
			email = " ",
			custom = {
				python = {
					pattern = "%.py$",
					icon = " 󰌠 ",
				},
			},
		},
		bullet = {
			right_pad = 1,
		},
	},
}
