return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = { ["<C-d>"] = actions.delete_buffer },
					n = { ["<C-d>"] = actions.delete_buffer },
				},
			},
		})
	end,
}
