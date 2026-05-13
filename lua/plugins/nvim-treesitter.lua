return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",

		opts = {
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"go",
				"python",
				"markdown",
				"markdown_inline",
				"bash",
				"json",
				"yaml",
			},

			auto_install = true,
		},

		config = function(_, opts)
			require("nvim-treesitter").setup(opts)

			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					pcall(vim.treesitter.start, args.buf)
				end,
			})
		end,
	},
}
