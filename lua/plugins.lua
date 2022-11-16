-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- color schema
  use 'folke/tokyonight.nvim'
  -- nvim tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
  }
  -- nvim web devicons
  use 'kyazdani42/nvim-web-devicons'
  -- lua line
  use 'nvim-lualine/lualine.nvim'
  require('lualine').setup {
    options = {
      section_separators = '',
      component_separators = '|',
      ignore_focus = { "NvimTree" },
      icons_enabled = true,
      theme = 'tokyonight'
    },
    sections = {
      lualine_b = {'branch', 'diff'}
    }
  }
  -- barbar
  use 'romgrk/barbar.nvim'
  -- editorconfig
  use 'gpanders/editorconfig.nvim'
  -- nvim tree
  use 'nvim-tree/nvim-tree.lua'
  -- nvim autotag
  use 'windwp/nvim-ts-autotag'
  -- nvim rainbow
  use 'p00f/nvim-ts-rainbow'
  -- nvim autopairs
  use 'windwp/nvim-autopairs'
  require('nvim-autopairs').setup({
    check_ts=true
  })
  -- nvim which key
  use 'folke/which-key.nvim'
  -- plenary
  use "nvim-lua/plenary.nvim"
  -- telescope
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

  -- LSP support
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}

  -- Autocomplete
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'saadparwaiz1/cmp_luasnip'}
  use {'hrsh7th/cmp-nvim-lsp'}

  -- Snippets
  use {'L3MON4D3/LuaSnip'}
  use {'rafamadriz/friendly-snippets'}

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = '*'}
  require('toggleterm').setup({
    open_mapping = '<C-g>',
    direction = 'horizontal',
    shade_terminals = true
  })
  -- Comment
  use 'numToStr/Comment.nvim'
  require('Comment').setup()
  -- Ident Blankline
  use 'lukas-reineke/indent-blankline.nvim'
end)
