vim.opt.scrolloff = 8 --keep 10 distance from up and down
vim.opt.showmatch = true --show matching brackets
vim.opt.sidescrolloff = 10 -- keep 10 distance from side
vim.opt.relativenumber = true
vim.opt.wrap = false -- do not wrap long text
vim.opt.fillchars = { eob = " " } -- remove ~ form side
vim.opt.autoread = true -- read changes happening outside nvim
vim.opt.autowrite = false -- do not auto-save
vim.opt.undofile = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"

-- tree-sitter
vim.bo.syntax = "on"
vim.bo.autoindent = true
vim.bo.smartindent = true

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})

--UI

vim.opt.fillchars:append({
	fold = " ",
	horiz = "━", -- '▃',--'═', --'─',
	horizup = "┻", -- '╩',-- '┴',
	horizdown = "┳", -- '╦', --'┬',
	vert = "┃", -- '▐', --'║', --'┃',
	vertleft = "┨", -- '╣', --'┤',
	vertright = "┣", -- '╠', --'├',
	verthoriz = "╋", -- '╬',--'┼','
})
