local lsp_lines = require("lsp_lines")

vim.diagnostic.config({virtual_text = false, virtual_lines = {only_current_line = true}})

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ko", vim.cmd.Ex)
vim.keymap.set("n", "<leader><Right>", function() vim.cmd.wincmd("1l") end)
vim.keymap.set("n", "<leader><Left>", function () vim.cmd.wincmd("1h") end)
vim.keymap.set("n", "<leader><Down>", function() vim.cmd.wincmd("1j") end)
vim.keymap.set("n", "<leader><Up>", function() vim.cmd.wincmd("1k") end)
vim.keymap.set("n", "<C-Space><Right>", vim.cmd.vsplit)
vim.keymap.set("n", "<C-Space><Down>", vim.cmd.split)
vim.keymap.set("n", "<leader>q", function() vim.cmd("$close")  end)
vim.keymap.set("i", "<C-a>", lsp_lines.toggle)
vim.keymap.set("n", "<C-a>", lsp_lines.toggle)
vim.keymap.set("n", "<C-x>", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<C-[>", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<F2>", vim.cmd.Lazy)
