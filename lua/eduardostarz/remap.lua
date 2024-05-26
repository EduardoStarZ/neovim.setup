vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ko", vim.cmd.Ex)
vim.keymap.set("n", "<leader><Right>", function() vim.cmd.wincmd("1l") end)
vim.keymap.set("n", "<leader><Left>", function () vim.cmd.wincmd("1h") end)
vim.keymap.set("n", "<leader><Down>", function() vim.cmd.wincmd("1j") end)
vim.keymap.set("n", "<leader><Up>", function() vim.cmd.wincmd("1k") end)
vim.keymap.set("n", "<C><leader><Right>", vim.cmd.vsplit)
vim.keymap.set("n", "<C><leader><Down>", vim.cmd.split)
