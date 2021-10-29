-- This file can be loaded by calling `lua require('useins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use "neovim/nvim-lspconfig"--lsp support

  --Colorschemes
  use "projekt0n/github-nvim-theme"

  --Motions
  use  "tpope/vim-surround"
  use  "tpope/vim-repeat"
  use  "tpope/vim-commentary"

  -- Autocompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  --Autopairs
  use 'windwp/nvim-autopairs'
  --Tree and icons
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }

  use 'nvim-lualine/lualine.nvim'
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
      }
    end
  }

end)
