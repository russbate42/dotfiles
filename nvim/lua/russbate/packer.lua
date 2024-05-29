-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  use { 'ellisonleao/gruvbox.nvim' }

  use { 'lervag/vimtex' }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "nvim-treesitter/nvim-treesitter" , {run = ':TSUpdate'}} 

  use { "nvim-treesitter/playground" }

  use {
	  "nvim-treesitter/nvim-treesitter-textobjects",
	  after = "nvim-treesitter",
	  requires = "nvim-treesitter/nvim-treesitter",
  }

  use {
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  }

  use {'m4xshen/autoclose.nvim'}

--  use {'SirVer/ultisnips'}

  use ({
      'L3MON4D3/LuaSnip',
      -- follow latest release.
      tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!:).
      run = "make install_jsregexp"
  })

  use {'ixru/nvim-markdown'}

  use {'wfxr/minimap.vim',
      as = 'minimap',
  }

  use {'ThePrimeagen/harpoon',
	branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim",
                "nvim-telescope/telescope.nvim"} }
  }

  use {'mbbill/undotree'}

  use {'tpope/vim-fugitive'}

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          --- Uncomment the two plugins below if you want to manage the language servers from neovim
          -- {'williamboman/mason.nvim'},
          -- {'williamboman/mason-lspconfig.nvim'},

          {'neovim/nvim-lspconfig'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }

  use {'euclio/vim-markdown-composer'}

  -- I don't think vim-snippets and luasnip/ultisnips is necessary
  -- use {'honza/vim-snippets'}

  -- install without yarn or npm
  -- use({
  --     "iamcco/markdown-preview.nvim",
  --     run = function() vim.fn["mkdp#util#install"]() end,
  -- })

  -- NVIM TREE, for now leave this out as we will just use netrw
  -- use { 'nvim-tree/nvim-tree.lua' }

  if packer_bootstrap then
      require('packer').sync()
  end
end)


