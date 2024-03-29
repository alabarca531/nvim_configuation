-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    -- or                            , branch = '0.1.x',
    requires = {{"nvim-lua/plenary.nvim"}}
  })
  use 'marko-cerovac/material.nvim'
  -- use({"bluz71/vim-nightfly-colors", as = "nightfly"})
  -- use({
  --   'rose-pine/neovim',
  --   as = 'rose-pine',
  --   config = function()
  --     vim.cmd('colorscheme rose-pine')
  --   end
  -- })
  -- Treesitter
  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  use("nvim-treesitter/nvim-treesitter-textobjects")
  use("nvim-treesitter/playground")
  -- Harpoon
  use("theprimeagen/harpoon")
  -- Undotree
  use("mbbill/undotree")
  -- Vim-Fuguitive
  use("tpope/vim-fugitive")
  -- Nvim Tree
  use({"nvim-tree/nvim-tree.lua", requires = {"nvim-tree/nvim-web-devicons"}})
  -- LSP
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      -- LSP Support
      {"williamboman/mason.nvim"}, -- Optional
      {"williamboman/mason-lspconfig.nvim"}, -- Optional
      {"neovim/nvim-lspconfig"}, -- Required
      -- Autocompletion
      {"hrsh7th/nvim-cmp"}, -- Required
      {"hrsh7th/cmp-nvim-lsp"}, -- Required
      {"hrsh7th/cmp-buffer"}, -- Optional
      {"hrsh7th/cmp-path"}, -- Optional
      {"saadparwaiz1/cmp_luasnip"}, -- Optional
      {"hrsh7th/cmp-nvim-lua"}, -- Optional
      -- Snippets
      {"L3MON4D3/LuaSnip"}, -- Required
      {"rafamadriz/friendly-snippets"}, -- Optional
      -- DAP support
      {"mfussenegger/nvim-dap"}, -- Everything else
      {"jose-elias-alvarez/null-ls.nvim"}, -- Formatter
      {"jay-babu/mason-null-ls.nvim"}, -- Integrator
      -- {'folke/trouble.nvim'},
      -- {'folke/lsp-colors.nvim'},
      -- {'folke/lsp-trouble.nvim'},
      -- VSCode like pictograms
      {"onsails/lspkind-nvim"}
    }
  })
  -- Terminal in Neovim
  use("akinsho/toggleterm.nvim")
  -- Autoclsoe tabs
  use("rstacruz/vim-closer")
  -- -- LaTeX in Vim packages
  use({"lervag/vimtex", ft = {"tex"}})

  use("tpope/vim-dispatch")
  -- commment out
  use("tpope/vim-commentary")
  -- Indent lines
  use("lukas-reineke/indent-blankline.nvim")
  -- LuaLine
  use("nvim-lualine/lualine.nvim")
  -- Attempt 2 at bufferline
  use({"akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons"})

  -- tabnine-nvim
  use({"codota/tabnine-nvim", run = "./dl_binaries.sh"})

  -- Pomodoro
  use({"wthollingsworth/pomodoro.nvim", requires = "MunifTanjim/nui.nvim"})

  -- Git signs
  use({"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}})

  -- Aerial
  use({"stevearc/aerial.nvim"})
  -- Discord
  use({"andweeb/presence.nvim"})

  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Trouble
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }


  -- Smart Splits
  -- use("mrjones2014/smart-splits.nvim")

  -- Code annotation
  -- use({
  --   "danymat/neogen",
  --   config = function()
  --     local neogen = require("neogen")
  --     neogen.setup({
  --       snippet_engine = "luasnip",
  --       -- -- Enable/disable the default (fallback) snippet
  --       enabled = true,
  --       -- List of languages to generate snippets for
  --       languages = {
  --         lua = {template = {annotation_convention = "ldoc"}},
  --         python = {template = {annotation_convention = "numpydoc"}},
  --         rust = {template = {annotation_convention = "rustdoc"}},
  --         typescript = {template = {annotation_convention = "tsdoc"}},
  --         javascript = {template = {annotation_convention = "jsdoc"}},
  --         typescriptreact = {template = {annotation_convention = "tsdoc"}}
  --       }
  --     })
  --   end
  -- })
end)
