return {
	{
		"saghen/blink.cmp",
		-- event = "VimEnter",
		version = "1.*",
		dependencies = {
			"L3MON4D3/LuaSnip",
			version = "v2.*",
		},
		opts = {
			signature = { enabled = true },
			appearance = { nerd_font_variant = "mono" },
			snippets = { preset = "luasnip" },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
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
