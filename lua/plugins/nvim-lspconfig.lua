return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,

		config = function()
			local capabilities =
			require("cmp_nvim_lsp").default_capabilities()

			-- Lua
vim.lsp.config("lua_ls", {
  root_dir = function(bufnr, on_dir)
    local root = vim.fs.root(bufnr, {
      ".git",
      ".luarc.json",
      ".luarc.jsonc",
      "stylua.toml",
    })

    if root and root ~= vim.env.HOME then
      on_dir(root)
    end
  end,
})
			-- Python
			vim.lsp.config("pylsp", {
				capabilities = capabilities,

				settings = {
					pylsp = {
						plugins = {
							pyflakes = { enabled = false },
							pycodestyle = { enabled = false },
							pylint = { enabled = false },
							mccabe = { enabled = false },
						},
					},
				},
			})

			-- Rust
			vim.lsp.config("rust_analyzer", {
				capabilities = capabilities,
			})

			-- C/C++
			vim.lsp.config("clangd", {
				capabilities = capabilities,
			})

			-- Golang
			vim.lsp.config("gopls", {
				capabilities = capabilities,
			})

			-- Enable servers
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pylsp")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("clangd")
			vim.lsp.enable("gopls")


			-- Diagnostics
			vim.lsp.enable("clangd")

			-- Floating diagnostics on hover
			vim.api.nvim_create_autocmd("CursorHold", {
				callback = function()
					vim.diagnostic.open_float(nil, {
						focus = false,
					})
				end,
			})
			local diagnostic_signs = {
				Error = " ",
				Warn = " ",
				Hint = "",
				Info = "",
			}

			vim.diagnostic.config({
				virtual_text = { prefix = "●", spacing = 4 },
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = diagnostic_signs.Error,
						[vim.diagnostic.severity.WARN] = diagnostic_signs.Warn,
						[vim.diagnostic.severity.INFO] = diagnostic_signs.Info,
						[vim.diagnostic.severity.HINT] = diagnostic_signs.Hint,
					},
				},
				underline = true,
				update_in_insert = false,
				severity_sort = true,
				float = {
					border = "rounded",
					source = true,
					header = "",
					prefix = "",
					focusable = false,
					style = "minimal",
				},
			})


			vim.o.updatetime = 250

		end,
	},
}
