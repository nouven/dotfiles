local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'onsails/lspkind-nvim'
  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v<CurrentMajor>.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })


  --use 'navarasu/onedark.nvim'
  use 'nvim-lualine/lualine.nvim'    -- Statusline
  use 'kyazdani42/nvim-web-devicons' -- File icons

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'akinsho/nvim-bufferline.lua'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-tree/nvim-tree.lua'

  use { "ellisonleao/gruvbox.nvim" }
  use 'glepnir/lspsaga.nvim'
end)
