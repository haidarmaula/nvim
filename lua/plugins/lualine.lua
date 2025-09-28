return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = "|",
			},
			tabline = {
				lualine_a = {
					{ "buffers" },
				},
			},
			sections = {
				lualine_c = {},
			},
		})
	end,
}
