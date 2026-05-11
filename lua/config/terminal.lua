-- Better terminal behavior
vim.api.nvim_create_autocmd("TermOpen", {
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = "no"
    vim.opt_local.wrap = false
    vim.opt_local.linebreak = false

		-- Start in insert mode
		vim.cmd("startinsert")
	end,
})

-- Terminal navigation
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])

-- Open horizontal terminal
vim.keymap.set("n", "<leader>h", function()
	vim.cmd("belowright split")
	vim.cmd("resize 15")
	vim.cmd("terminal")
	vim.cmd("startinsert")
end, { desc = "Terminal below" })

-- Open vertical terminal
vim.keymap.set("n", "<leader>v", function()
	vim.cmd("belowright vsplit")
	vim.cmd("vertical resize 50")
	vim.cmd("terminal")
	vim.cmd("startinsert")
end, { desc = "Terminal right" })

-- Open floating terminal
vim.keymap.set("n", "<leader>tf", function()
	local buf = vim.api.nvim_create_buf(false, true)

	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.8)

	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)

	vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		width = width,
		height = height,
		row = row,
		col = col,
		border = "rounded",
	})

	vim.fn.termopen(vim.o.shell)
	vim.cmd("startinsert")
end, { desc = "Floating terminal" })
