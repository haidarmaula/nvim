return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach", -- lazy-load when LSP attaches (recommended)
	config = function()
		local saga = require("lspsaga")

		saga.setup({
			-- Generic UI options (lihat docs misc/ui Beacon)
			ui = {
				border = "rounded", -- "single" | "double" | "rounded" | "shadow"
				devicon = true, -- enable nvim-web-devicons (optional)
				title = true, -- show title in some floats
				expand = "⊞", -- outline expand icon
				collapse = "⊟", -- outline collapse icon
				code_action = "💡", -- icon for code actions / lightbulb
				actionfix = "", -- action fix icon
				lines = { "┗", "┣", "┃", "━", "┏" }, -- virtual text connectors
				kind = {}, -- override LSP kinds (optional table)
				imp_sign = "󰳛 ", -- implement icon
			},

			-- beacon (visual hint when jumping)
			beacon = {
				enable = true,
				frequency = 7,
			},

			-- Scroll preview default keymaps (used across modules)
			scroll_preview = {
				scroll_down = "<C-f>",
				scroll_up = "<C-b>",
			},

			-- Code action UI
			code_action = {
				num_shortcut = true,
				show_server_name = false,
				extend_gitsigns = false, -- integrate gitsigns actions if desired
			},

			-- Finder (references / implementations / definitions)
			finder = {
				max_height = 0.5,
				left_width = 0.3,
				right_width = 0.3,
				default = "ref+imp", -- default shown: references + impl
				layout = "float", -- "normal" or "float"
				keys = {
					shuttle = "[w", -- jump between left/right in layout
					toggle_or_open = "o",
					vsplit = "s",
					split = "i",
					tabe = "t",
					tabnew = "r",
					quit = "q",
					close = "<C-c>k",
				},
			},

			-- Definition / peek / goto
			definition = {
				width = 0.6,
				height = 0.5,
				keys = {
					edit = "<C-c>o",
					vsplit = "<C-c>v",
					split = "<C-c>i",
					tabe = "<C-c>t",
					quit = "q",
					close = "<C-c>k",
				},
			},

			-- Hover (uses treesitter markdown parser)
			hover = {
				max_width = 0.9,
				max_height = 0.8,
				open_link = "gx", -- key to open links inside hover
				open_cmd = "!xdg-open", -- fallback open command on Linux
			},

			-- Diagnostic window behavior
			diagnostic = {
				show_code_action = true,
				jump_num_shortcut = true,
				max_width = 0.8,
				max_height = 0.6,
				text_hl_follow = true,
				border_follow = true,
				extend_relatedInformation = false,
				show_layout = "float", -- "float" or "normal"
				diagnostic_only_current = false,
				keys = {
					exec_action = "o",
					quit = "q",
					toggle_or_jump = "<CR>",
					quit_in_show = { "q", "<ESC>" },
				},
			},

			-- Lightbulb (auto show when code-action available)
			lightbulb = {
				enable = true,
				sign = true,
				virtual_text = false,
				debounce = 10,
				sign_priority = 40,
			},

			-- Symbols in winbar (breadcrumbs)
			symbol_in_winbar = {
				enable = true,
				separator = "  ",
				show_file = true,
				hide_keyword = false,
				folder_level = 2,
				respect_root = false,
			},

			-- Outline (file symbol tree)
			outline = {
				win_position = "right", -- "left" or "right"
				win_with = "", -- e.g. "qf"
				win_width = 30,
				auto_preview = true,
				detail = true,
				auto_close = true,
				close_after_jump = false,
				layout = "normal", -- "normal" or "float"
				max_height = 0.5,
				left_width = 0.3,
				keys = {
					toggle_or_jump = "o",
					quit = "q",
					jump = "e",
				},
			},

			-- Rename (async project-wide rename + UI)
			rename = {
				quit = "<C-c>",
				mark = "󰩺",
				confirm = "<CR>",
				in_select = false,
			},

			-- Implement module
			implement = {
				enable = true,
				-- you can tune icons or other small options here
			},

			-- Float terminal (built-in floating terminal)
			floatterm = {
				single = false,
				-- mappings are available via commands :Lspsaga term_toggle
			},
		})
	end,

	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional but recommended (hover markdown rendering)
		"nvim-tree/nvim-web-devicons", -- optional (devicons in UI)
	},
}
