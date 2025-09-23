-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{
			'nvim-telescope/telescope.nvim',
			'nvim-lua/plenary.nvim',
			"catgoose/nvim-colorizer.lua",
			'rktjmp/lush.nvim',
			"xero/miasma.nvim",
			{"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
			'theprimeagen/harpoon',
			'mbbill/undotree',
			'tpope/vim-fugitive',
			'andweeb/presence.nvim',
			'nvim-lualine/lualine.nvim',
			{'williamboman/mason.nvim', lazy = true},
			{'neovim/nvim-lspconfig'},
			'williamboman/mason-lspconfig.nvim',
			"https://git.sr.ht/~whynothugo/lsp_lines.nvim",

			{
				'saghen/blink.cmp',
				dependencies = { 'rafamadriz/friendly-snippets' },

				version = '1.*',
				opts = {
					appearance = {
						nerd_font_variant = 'mono'
					},

					completion = { documentation = { auto_show = false } },

					sources = {
						default = { 'lsp', 'path', 'snippets', 'buffer' },
					},

					fuzzy = { 
						implementation = "prefer_rust",
					},
					keymap = {
						preset = 'none',
						['<CR>'] = {'accept', 'fallback'},
						['<C-e>'] = {'show_documentation', 'hide_documentation', 'fallback'},
						['<C-S-Up>'] = {'scroll_documentation_up', 'fallback'},
						['<C-S-Down>'] = {'scroll_documentation_down', 'fallback'},
						['<C-Up>'] = {"select_prev", "fallback"},
						['<C-Down>'] = {"select_next", "fallback"},
						['<C-Space>'] = {'hide', 'fallback'},
					},
				},
				opts_extend = { "sources.default" }
			}
		}
	},
	checker = { enabled = true },
})

require("eduardostarz.set")
require("eduardostarz.remap")
