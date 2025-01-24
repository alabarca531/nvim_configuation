return {
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.8',
        -- branch = '0.1.x',
        dependencies = { { "nvim-lua/plenary.nvim" } }
    },

    -- Color Theme
    'marko-cerovac/material.nvim',
    -- 'EdenEast/nightfox.nvim',

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-treesitter/nvim-treesitter-textobjects',
    'nvim-treesitter/playground',

    -- Harpoon
    'theprimeagen/harpoon',
    -- Undo Tree
    'mbbill/undotree',
    -- Vim Fuguitive
    'tpope/vim-fugitive',

    --Nvim Tree
    { 
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" , "echasnovski/mini.nvim" },
        on_attach = on_attach 
    },

    -- Terminal in Neovim
    "akinsho/toggleterm.nvim",
    -- Autoclsoe tabs
    "rstacruz/vim-closer",
    -- Discord Presence
    { "andweeb/presence.nvim" },
    -- Commenting
    { "numToStr/Comment.nvim", config = function() require('Comment').setup() end },

    -- LSP
    -- LSP
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            { "williamboman/mason.nvim" },           -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional
            { "neovim/nvim-lspconfig" },             -- Required
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },                  -- Required
            { "hrsh7th/cmp-nvim-lsp" },              -- Required
            { "hrsh7th/cmp-buffer" },                -- Optional
            { "hrsh7th/cmp-path" },                  -- Optional
            { "saadparwaiz1/cmp_luasnip" },          -- Optional
            { "hrsh7th/cmp-nvim-lua" },              -- Optional
            {
                "zbirenbaum/copilot.lua",
                cmd = "Copilot",       -- Load only when the Copilot command is used
                event = "InsertEnter", -- Optionally load when entering insert mode
                config = function()
                    require("copilot").setup({
                        suggestion = {
                            enabled = true,
                            auto_trigger = true,
                            keymap = {
                                accept = "<S-Tab>",
                                replace = "<CR>",
                                toggle = "<C-Space>",
                                next = "<C-j>",
                                prev = "<C-k>",
                            }
                        },
                        panel = {
                            enabled = true,
                            position = "bottom",
                            size = 10,
                        },
                    })
                end,
            },
            -- Snippets
            { "L3MON4D3/LuaSnip" },                -- Required
            { "rafamadriz/friendly-snippets" },    -- Optional
            -- DAP support
            -- { "jose-elias-alvarez/null-ls.nvim" }, -- Formatter
            { "jay-babu/mason-null-ls.nvim" },     -- Integrator
            { 'folke/trouble.nvim' },
            { 'folke/lsp-colors.nvim' },
            { 'folke/lsp-trouble.nvim' },
            -- VSCode like pictograms
            { "onsails/lspkind-nvim" }
        }
    },

    -- Status Line
    -- LSP status
    { "nvim-lua/lsp-status.nvim" },

    -- Todo Comments
    { "folke/todo-comments.nvim", dependencies = "nvim-lua/plenary.nvim" },
}
