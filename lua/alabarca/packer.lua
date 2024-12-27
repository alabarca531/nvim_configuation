-- This file can be loaded by calling 'lua require('plugins')`  from your init.vim
--
--  Only required if you have a packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use) -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use({
		"nvim-telescope/telescope.nvim", tag = '0.1.8',
		-- branch = '0.1.x',
		requires = {{"nvim-lua/plenary.nvim"}}
	})

	-- Color Theme
	use 'marko-cerovac/material.nvim'
    use 'EdenEast/nightfox.nvim'

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/nvim-treesitter-textobjects')
	use('nvim-treesitter/playground')

	-- Harpoon
	use('theprimeagen/harpoon')
	-- Undo Tree
	use('mbbill/undotree')
	-- Vim Fuguitive
	use('tpope/vim-fugitive')
	--Nvim Tree
	use({"nvim-tree/nvim-tree.lua", requires = {"nvim-tree/nvim-web-devicons"}, on_attach = on_attach})

	-- Terminal in Neovim
	use("akinsho/toggleterm.nvim")
	-- Autoclsoe tabs
	use("rstacruz/vim-closer")
	-- -- LaTeX in Vim packages
	use({"lervag/vimtex", ft = {"tex"}})
    -- Discord Presence
    use({"andweeb/presence.nvim"})
    -- Commenting 
    use({"numToStr/Comment.nvim", config = function() require('Comment').setup() end})

	-- LSP
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
			  {'folke/trouble.nvim'},
			  {'folke/lsp-colors.nvim'},
			  {'folke/lsp-trouble.nvim'},
			  -- VSCode like pictograms
			  {"onsails/lspkind-nvim"}
		  }
	  })

    -- Status Line
    use({"hoob3rt/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true}})
    -- LSP status
    use({"nvim-lua/lsp-status.nvim"})

    -- Todo Comments 
    use({"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim"})

    -- To Do List 
end)
