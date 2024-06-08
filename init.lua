vim.g.mapleader= " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts= {}
vim.api.nvim_set_option("clipboard","unnamed")
vim.opt.clipboard = "unnamedplus"
require("lazy").setup("plugins")
vim.wo.number = true

