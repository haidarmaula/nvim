local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

map("n", "<leader>h", function()
	print("hello world!")
end)

map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<leader>e", ":Ex<CR>", { desc = "File Explorer" })

map("n", "<S-h>", ":bprevious<CR>", { silent = true, desc = "Previous Buffer" })
map("n", "<S-l>", ":bnext<CR>", { silent = true, desc = "Next buffer" })
map("n", "<leader>bd", ":bdelete<CR>", { silent = true, desc = "Delete Buffer" })

map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move current line up" })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move current line down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected block up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected block down" })

-- Split horizontally & vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })

-- Navigate between splits
map("n", "<C-h>", "<C-w>h", { desc = "Move to the split on the left" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to the split below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to the split above" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to the split on the right" })

-- Resize splits
map("n", "<A-Up>", "<C-w>+", { desc = "Increase window height" })
map("n", "<A-Down>", "<C-w>-", { desc = "Decrease window height" })
map("n", "<A-Left>", "<C-w><", { desc = "Decrease window width" })
map("n", "<A-Right>", "<C-w>>", { desc = "Increase window width" })

-- Close splits
map("n", "<leader>sc", "<C-w>c", { desc = "Close current split" })
map("n", "<leader>so", "<C-w>o", { desc = "Close all other splits" })

-- Oil keymaps
map("n", "-", ":Oil<CR>", { desc = "Open parent directory in Oil" })

-- Telescope keymaps
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope: Find files" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope: Live grep" })
map("n", "<leader><leader>", ":Telescope buffers<CR>", { desc = "Telescope: Buffers" })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Telescope: Help tags" })
map("n", "<leader>/", ":Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope: Search in current buffer" })

-- Lspsaga keymaps
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Lspsaga: Show hover documentation" })
map("n", "gr", "<cmd>Lspsaga finder<CR>", { desc = "Lspsaga: Find references / implementations / definitions" })
map("n", "gD", "<cmd>Lspsaga peek_definition<CR>", { desc = "Lspsaga: Peek definition in floating window" })
map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Lspsaga: Go to definition (jump)" })
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Lspsaga: Show code actions" })
map(
	"v",
	"<leader>ca",
	"<cmd>Lspsaga code_action<CR>",
	{ desc = "Lspsaga: Show/apply code action for visual selection" }
)
map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { desc = "Lspsaga: Rename symbol" })
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Lspsaga: Jump to previous diagnostic" })
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Lspsaga: Jump to next diagnostic" })
map(
	"n",
	"<leader>db",
	"<cmd>Lspsaga show_buf_diagnostics<CR>",
	{ desc = "Lspsaga: Show diagnostics for current buffer" }
)
map(
	"n",
	"<leader>dw",
	"<cmd>Lspsaga show_workspace_diagnostics<CR>",
	{ desc = "Lspsaga: Show diagnostics for workspace" }
)
map("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { desc = "Lspsaga: Toggle symbol outline (file tree)" })
map("n", "<leader>ft", "<cmd>Lspsaga term_toggle<CR>", { desc = "Lspsaga: Toggle floating terminal" })
