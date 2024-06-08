return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = "<Leader>v",
      direction = "horizontal",
      border= "none"
    })

    vim.api.nvim_set_keymap(
      'n', '<Leader>h', '<Cmd>exe v:count1 . "ToggleTerm direction=vertical size=50"<CR>',
      { noremap = true, silent = true }
    )
 end,
}
