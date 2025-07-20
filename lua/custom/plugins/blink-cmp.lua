return {
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		-- { "L3MON4D3/LuaSnip", version = "v2.*", dependencies = { "folke/lazydev.nvim" } },
		{ "onsails/lspkind.nvim" },
		{ "nvim-tree/nvim-web-devicons" },
	},
	opts = {
		keymap = {
			preset = "default",
		},
		signature = {
			enabled = true,
		},
		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "mono",
		},
		-- snippets = {
		-- 	preset = "luasnip",
		-- },
		-- sources = {
		-- 	default = { "lsp", "path", "snippets", "lazydev" },
		-- 	providers = {
		-- 		lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
		-- 	},
		-- },
		fuzzy = {
			implementation = "lua",
		},
		completion = {
			menu = {
				border = "single",
				completion = {
					menu = {
						draw = {
							components = {
								kind_icon = {
									text = function(ctx)
										local icon = ctx.kind_icon
										if vim.tbl_contains({ "Path" }, ctx.source_name) then
											local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
											if dev_icon then
												icon = dev_icon
											end
										else
											icon = require("lspkind").symbolic(ctx.kind, {
												mode = "symbol",
											})
										end

										return icon .. ctx.icon_gap
									end,

									-- Optionally, use the highlight groups from nvim-web-devicons
									-- You can also add the same function for `kind.highlight` if you want to
									-- keep the highlight groups in sync with the icons.
									highlight = function(ctx)
										local hl = ctx.kind_hl
										if vim.tbl_contains({ "Path" }, ctx.source_name) then
											local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
											if dev_icon then
												hl = dev_hl
											end
										end
										return hl
									end,
								},
							},
						},
					},
				},
			},
			documentation = { auto_show = true },
			list = {
				selection = {
					preselect = true,
					auto_insert = false,
				},
			},
		},
	},
}
