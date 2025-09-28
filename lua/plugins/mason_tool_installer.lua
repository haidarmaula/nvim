return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	opts = {
		ensure_installed = {
			-- Formatters
			"stylua",
			"black",
			"prettier",
			"prettierd",
			"clang-format",
		},
	},
	dependencies = { "mason-org/mason.nvim", "mason-org/mason-lspconfig.nvim" },
}
