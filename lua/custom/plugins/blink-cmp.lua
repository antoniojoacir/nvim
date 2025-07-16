return {
	{
		"saghen/blink.cmp",
		event = "VimEnter",
		version = "1.*",
		dependencies = {
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			dependencies = {
				"folke/lazydev.nvim",
			},
		},
		opts = {
			keymap = {
				preset = "default",
			},
			signature = { enabled = true },
			appearance = { nerd_font_variant = "mono" },
			snippets = { preset = "luasnip" },
			sources = {
				default = { "lsp", "path", "snippets", "lazydev" },
				providers = {
					lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
				},
			},
			fuzzy = {
				implementation = "lua",
			},
			completion = {
				documentation = { auto_show = true },
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
