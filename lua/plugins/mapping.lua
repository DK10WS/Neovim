return {
  vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move left" }),
  vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right" }),
  vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move down" }),
  vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move up" }),

  vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" }),
  vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" }),
  vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" }),
  vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" }),

  vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "file save" }),

  vim.keymap.set("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true }),
  vim.keymap.set("v", "<leader>/", "gc", { desc = "comment toggle", remap = true }),

  vim.keymap.set("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" }),

  vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>bnext<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>bprev<CR>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<Leader>x", "<cmd>bd<CR>", { noremap = true, silent = true }),
}
