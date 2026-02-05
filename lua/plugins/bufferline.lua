return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				numbers = "none",
				close_command = "bdelete! %d",
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",

				indicator = {
					icon = "▎",
					style = "icon",
				},

				buffer_close_icon = "󰅖",
				modified_icon = "●",
				close_icon = "",

				diagnostics = "nvim_lsp",

				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,

				persist_buffer_sort = true,
				move_wraps_at_ends = false,

				sort_by = "insert_after_current",
			},
		})
	end,
}
