-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Telescope Setup
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'rktjmp/lush.nvim'

  use("catgoose/nvim-colorizer.lua")

  -- Color Scheme Setup
  use ({
		  -- "savq/melange-nvim",
		  -- "scottmckendry/cyberdream.nvim",
		  -- "xero/miasma.nvim",
		  "eduardostarz/metamorphosis.nvim",
		  as ="metamorphosis",
		  config = function()
				  vim.cmd("colorscheme metamorphosis")
		  end
  })

  --Treesitter Setup
  use {
		  'nvim-treesitter/nvim-treesitter', tag = 'v0.8.5.1', {run = ':TSUpdate'}
  }

  use{'theprimeagen/harpoon'}

  use ('mbbill/undotree')

  use ('tpope/vim-fugitive')

  use ('andweeb/presence.nvim')

  use {
   'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
    'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = "v2.x",
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},


		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  },

	  use({
			  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
			  config = function()
					  require("lsp_lines").setup()
			  end,
	  })
}

		 -- use ('vyfor/cord.nvim', {run = "build"})
end)
