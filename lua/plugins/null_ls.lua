-- return {
--     "jose-elias-alvarez/null-ls.nvim",
--     dependencies = { "nvim-lspconfig" },
--
--     config = function()
--         local null_ls = require("null-ls")
--         local b = null_ls.builtins
--
--         null_ls.setup({
--             sources = {
--                 b.formatting.clang_format,
--                 b.formatting.autopep8,
--                 b.formatting.beautysh,
--                 -- b.formatting.bibtex_tidy,
--                 -- b.formatting.cmakelang,
--                 -- b.formatting.jupytext,
--                 b.formatting.latexindent,
--             },
--         })
--
--         -- Run format on <Leader>fm in normal mode
--         -- Run format on <Leader>fM in visual mode
--
--
--         vim.api.nvim_set_keymap("n", "<Leader>fm", ":lua vim.lsp.buf.format()<CR>",
--             { noremap = true, silent = true, desc = "[F]or[M]at Document" })
--         -- vim.api.nvim_set_keymap("v", "<Leader>fM", ":lua vim.lsp.buf.range_formatting()<CR>",
--         --     { noremap = true, silent = true, desc = "[F]or[M]at Document" })
--     end,
-- }
return {
    "nvimtools/none-ls.nvim", -- Replaces null-ls.nvim
    dependencies = { "nvim-lspconfig" },

    config = function()
        local null_ls = require("null-ls") -- Still required for compatibility
        local b = null_ls.builtins

        null_ls.setup({
            sources = {
                b.formatting.clang_format,
                b.formatting.black,
                -- null_ls.builtins.formatting.black.with_args({ extra_args = { "--line-length", "88" } }),
                -- b.formatting.beautysh,
                -- b.formatting.jupytext,
                -- Custom latexindent configuration
                null_ls.builtins.formatting.stylua, -- Example of a working formatter
                -- null_ls.builtins.formatting.shfmt,   -- Example of a working formatter
                -- null_ls.builtins.formatting.trim_whitespace,
                -- null_ls.builtins.formatting.trim_newlines,
                -- null_ls.builtins.formatting.prettier, -- Example, if you have Prettier installed
                -- null_ls.builtins.formatting.latexindent
            },
        })

        vim.api.nvim_set_keymap("n", "<Leader>fm", ":lua vim.lsp.buf.format({ async = true })<CR>",
            { noremap = true, silent = true, desc = "[F]or[M]at Document" }) 
            -- Keybindings for formatting

        -- vim.api.nvim_set_keymap("n", "<Leader>fm", ":lua vim.lsp.buf.format()<CR>",
        --     { noremap = true, silent = true, desc = "[F]or[M]at Document" })
        vim.api.nvim_set_keymap("v", "<Leader>fM", ":lua vim.lsp.buf.range_formatting()<CR>",
            { noremap = true, silent = true, desc = "[F]or[M]at Selection" })
    end,
}
