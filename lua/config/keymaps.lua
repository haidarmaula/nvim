local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

map("n", "<leader>h", function()
	print("hello world!")
end)

map("n", "<S-h>", ":bprevious<CR>", { silent = true, desc = "Previous Buffer" })
map("n", "<S-l>", ":bnext<CR>", { silent = true, desc = "Next buffer" })

map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<leader>e", ":Ex<CR>", { desc = "File Explorer" })

map("n", "-", ":Oil<CR>", { desc = "Open parent directory in Oil" })

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader><leader>", ":Telescope buffers<CR>", { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>/", ":Telescope current_buffer_fuzzy_find<CR>", { desc = "Search in current buffer" })
