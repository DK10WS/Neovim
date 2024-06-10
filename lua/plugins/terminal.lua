return {
	"NvChad/nvterm",
	config = function()
		require("nvterm").setup({
			terminals = {
				horizontal = {
					location = "rightbelow",
					split_ratio = .3,
				},
				vertical = {
					location = "rightbelow",
					split_ratio = .000001,
				},

				behavior = {
					autoclose_on_quit = {
						enabled = true,
						confirm = true,
					},
					close_on_exit = true,
					auto_insert = true,
				},
			},
		})

		vim.keymap.set("n", "<leader>h", function()
			require("nvterm.terminal").toggle("horizontal")
		end, { noremap = true, silent = true, desc = "Toggle Horizontal Terminal" })

		vim.keymap.set("n", "<leader>v", function()
			require("nvterm.terminal").toggle("vertical")
		end, { noremap = true, silent = true, desc = "Toggle Vertical Terminal" })
	end,
}
