return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {
			git = {
				enable = true,
				ignore = true,
			},
			filesystem_watchers = {
				enable = true,
			},
			actions = {
				open_file = {
					resize_window = true,
				},
			},
			renderer = {
				highlight_git = true,
				highlight_opened_files = "none",

				indent_markers = {
					enable = true,
				},
			},
		}
		vim.keymap.set('n', '<C-n>' , '<cmd>NvimTreeToggle<CR>', {desc = "nvimtree toggle window" })
	end,
}

