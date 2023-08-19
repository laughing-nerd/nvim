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

-- Autocommand that reloads neovim whenever this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

local packer_bootstrap = ensure_packer()
return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  -- Colorscheme
  use("bluz71/vim-nightfly-colors")

  -- Comment plugin
  use("numToStr/Comment.nvim")

  -- File Explorer
  use("nvim-tree/nvim-tree.lua")

  -- Git signs
  use("lewis6991/gitsigns.nvim")

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
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
	  }
  }

  -- Treesitter
  use({"nvim-treesitter/nvim-treesitter",
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  })

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Colorizer
  use "norcalli/nvim-colorizer.lua"

  -- Indentline
  use ("lukas-reineke/indent-blankline.nvim")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
