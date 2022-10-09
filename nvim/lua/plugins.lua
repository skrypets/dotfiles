vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'lewis6991/impatient.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'github/copilot.vim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-orgmode/orgmode', 
    config = function()
    require('orgmode').setup {}
    end
  }
  use 'RRethy/vim-illuminate'
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }
  use 'm-demare/hlargs.nvim'
  use 'mg979/vim-visual-multi'
  use 'voldikss/vim-floaterm'
  use {
    "j-hui/fidget.nvim",
      config = function()
      require("fidget").setup {}
      end
    }
  use 'danilamihailov/beacon.nvim'
  use {
	"folke/which-key.nvim",
  	config = function()
    require("which-key").setup {}
  	end
  }
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function() require('hop').setup {} end
  }
  use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'rcarriga/nvim-notify'
  use 'norcalli/nvim-colorizer.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly'
  }
  use 'feline-nvim/feline.nvim'
  use 'nanozuki/tabby.nvim'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use 'simrat39/rust-tools.nvim'
  use 'simrat39/inlay-hints.nvim'
  use 'lvimuser/lsp-inlayhints.nvim'
  use { 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'} }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'saadparwaiz1/cmp_luasnip'
  use { 'L3MON4D3/LuaSnip', branch='snippet_text_edits' }
  use 'EdenEast/nightfox.nvim'
end)
