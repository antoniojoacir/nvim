--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require("custom.vimopts")

-- [[ Basic Keymaps ]]
require("custom.vimkeymaps")

-- [[ Configure and install plugins ]]
require("custom.lazy")

-- Theme
-- vim.cmd.colorscheme("base16-black-metal-bathory")

vim.cmd.colorscheme("tokyonight")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
