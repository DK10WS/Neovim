return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			disable_netrw = false,
			hijack_netrw = true,
			hijack_cursor = true,
			respect_buf_cwd = false,
			sync_root_with_cwd = true,
			filters = {
				dotfiles = false,
			},
			git = { enable = true, ignore = true },
			update_focused_file = {
				enable = false,
				update_root = true,
				ignore_list = { "help" },
			},
			live_filter = {
				always_show_folders = false,
			},
			system_open = {
				cmd = nil,
				args = {},
			},
			diagnostics = {
				enable = true,
				icons = {
					error = "",
					warning = "",
					info = "",
					hint = "",
				},
			},
			modified = {
				enable = true,
			},
			actions = {
				change_dir = {
					global = true,
				},
				open_file = {
					resize_window = true,
				},
				file_popup = {
					open_win_config = {
						border = vim.g.FloatBorders,
					},
				},
			},
			view = {
				adaptive_size = false,
			},
			renderer = {
				-- highlight_opened_files = 'name',
				icons = {
					git_placement = "before",
					glyphs = {
						git = {
              unstaged = "",
							staged = "",
							unmerged = "",
							renamed = "",
							untracked = "",
							deleted = "",
							ignored = "",
						},
					},
				},
			},
		});
		vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
	end,
}
