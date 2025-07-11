return {
	{
		"saghen/blink.cmp",
		event = "VimEnter",
		version = "1.*",
		dependencies = {
			"echasnovski/mini.snippets",
		},
		opts = {
			cmdline = {
				completion = {
					ghost_text = {
						enabled = true,
					},
				},
			},
			signature = { enabled = true },
			appearance = { nerd_font_variant = "mono" },
			snippets = { preset = "mini_snippets" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			completion = {
				documentation = { auto_show = true },
				ghost_text = {
					enabled = true,
				},
				list = {
					selection = {
						preselect = true,
						auto_insert = false,
					},
				},
			},
		},
	},
}
