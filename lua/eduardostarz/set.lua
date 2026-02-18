vim.opt.nu = true
vim.opt.relativenumber = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.api.nvim_set_hl(0, 'LineNr', { bg = "NONE" })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = "NONE" })

vim.api.nvim_set_hl(0, 'DiagnosticSignError', { bg = "NONE" })
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { bg = "NONE" })
vim.api.nvim_set_hl(0, 'DiagnosticSignInfo', { bg = "NONE" })
vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { bg = "NONE" })
