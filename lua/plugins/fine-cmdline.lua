return {
	"VonHeikemen/fine-cmdline.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("fine-cmdline").setup({
			cmdline = {
				enable_keymaps = true,
				smart_history = true,
				prompt = ": ",
			},
			popup = {
				position = {
					row = "10%",
					col = "50%",
				},
				size = {
					width = "60%",
				},
				border = {
					style = {
    top_left    = "╭", top    = "─",    top_right = "╮",
    left        = "│",                      right = "│",
    bottom_left = "╰", bottom = "─", bottom_right = "╯",
  },
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
			},
		})
	end,
  vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
}
