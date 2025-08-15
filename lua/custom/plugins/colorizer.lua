return {
	"catgoose/nvim-colorizer.lua",
	config = function()
		-- #111111 #FFFFFF hsl(0 90% 50%)
		require("colorizer").setup({
			user_default_options = {
				names = false,
				css = true,
				xterm = true,
				mode = "virtualtext",
				virtualtext_inline = "before",
				virtualtext = "",
				always_update = true,
			},
		})
	end,
}
