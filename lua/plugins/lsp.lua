return {
  -- Mason: LSP installer
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Auto install LSPs with Mason
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  -- LSP Configurations
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Setup LSPs
      local servers = {
        lua_ls = {},
        pylsp = {
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
        },
        rust_analyzer = {},
        clangd = {},
      }

      for server, opts in pairs(servers) do
        opts.capabilities = capabilities
        lspconfig[server].setup(opts)
      end

      -- Diagnostic floating window on CursorHold
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
        float = {
          source = "always",
        },
      })

      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.diagnostic.open_float(nil, { focus = false })
        end,
      })

      -- Speed up CursorHold event
      vim.o.updatetime = 250

      -- Keymaps for LSP features
      local map = vim.keymap.set
      map("n", "K", vim.lsp.buf.hover, {})
      map("n", "<leader>gd", vim.lsp.buf.definition, {})
      map("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
