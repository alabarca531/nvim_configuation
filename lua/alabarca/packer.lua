-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/nvim-treesitter-textobjects')
  use('nvim-treesitter/playground')
  -- Harpoon
  use('theprimeagen/harpoon')
  -- Undotree
  use('mbbill/undotree')
  -- Vim-Fuguitive
  use('tpope/vim-fugitive')
  -- Nvim Tree
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'williamboman/mason.nvim'}, -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      {'neovim/nvim-lspconfig'}, -- Required
      -- Autocompletion
      {'hrsh7th/nvim-cmp'}, -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'hrsh7th/cmp-buffer'}, -- Optional
      {'hrsh7th/cmp-path'}, -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'}, -- Optional
      -- Snippets
      {'L3MON4D3/LuaSnip'}, -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
      -- DAP support
      {'mfussenegger/nvim-dap'}, -- Everything else
      {'jose-elias-alvarez/null-ls.nvim'}, -- Formatter
      {'jay-babu/mason-null-ls.nvim'}, -- Integrator
      -- {'folke/trouble.nvim'},
      -- {'folke/lsp-colors.nvim'},
      -- {'folke/lsp-trouble.nvim'},
      -- VSCode like pictograms
      {'onsails/lspkind-nvim'}
    }
  }
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  -- Terminal in Neovim
  use "akinsho/toggleterm.nvim"
  -- Autoclsoe tabs
  use 'rstacruz/vim-closer'
  -- -- LaTeX in Vim packages
  use({'lervag/vimtex', ft = {'tex'}})

  use('tpope/vim-dispatch')
  -- commment out
  use('tpope/vim-commentary')
  -- Indent lines
  use "lukas-reineke/indent-blankline.nvim"
  -- LuaLine
  use 'nvim-lualine/lualine.nvim'
  -- Attempt 2 at bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- tabnine-nvim
  use {'codota/tabnine-nvim', run = "./dl_binaries.sh"}

  -- Pomodoro
  use {'wthollingsworth/pomodoro.nvim', requires = 'MunifTanjim/nui.nvim'}

  -- Git signs
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- Symbols outline
  use {'simrat39/symbols-outline.nvim'}

  -- Discord
  use {'andweeb/presence.nvim'}
end)
