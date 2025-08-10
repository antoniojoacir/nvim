-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set(
	"n",
	"<Esc>",
	"<cmd>nohlsearch<CR>",
	{ desc = "Clear highlights on search when pressing <Esc> in normal mode" }
)

-- Reload file
vim.keymap.set("n", "<leader>.", "<cmd>source %<CR>", { desc = "Reload the current lua file" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- -- TIP: Disable arrow keys in normal mode
-- vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
--

vim.keymap.set("n", "<leader>bq", "<cmd>:bd!<CR>", { desc = "Close the current buffer" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
