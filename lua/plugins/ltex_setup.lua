return {
    "williamboman/mason.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "ltex" }
        })
        
        -- Create the spell directory if it doesn't exist
        local spell_dir = vim.fn.expand("~/.config/nvim/spell")
        if vim.fn.isdirectory(spell_dir) == 0 then
            vim.fn.mkdir(spell_dir, "p")
        end
        
        -- Setup ltex with your custom dictionary
        require("lspconfig").ltex.setup({
            settings = {
                ltex = {
                    language = "en-US",
                    dictionary = {
                        ["en-US"] = vim.fn.readfile(vim.fn.expand("~/.config/nvim/spell/en.utf-8.add")),
                    },
                    disabledRules = {},
                    hiddenFalsePositives = {},
                },
            },
            flags = {
                debounce_text_changes = 150,
            },
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            filetypes = { "tex", "markdown", "text" },
            on_attach = function(client, bufnr)
                -- Create command to reload dictionary
                vim.api.nvim_create_user_command("LtexReloadDict", function()
                    client.config.settings.ltex.dictionary = {
                        ["en-US"] = vim.fn.readfile(vim.fn.expand("~/.config/nvim/spell/en.utf-8.add")),
                    }
                    client.notify('workspace/didChangeConfiguration', { settings = client.config.settings })
                    vim.notify("LTeX dictionary reloaded", vim.log.levels.INFO)
                end, {})
            end,
        })
    end,
} 