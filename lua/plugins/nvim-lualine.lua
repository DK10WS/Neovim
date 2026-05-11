return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "powerline_dark",
				ignore_focus = { "NvimTree", "terminal" },
			},
		})
	end,
}
