return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lspconfig" },

    config = function()
        local null_ls = require("null-ls")
        local b = null_ls.builtins

        null_ls.setup({
            sources = {
                b.formatting.clang_format,
                b.formatting.autopep8,
                b.formatting.beautysh,
                -- b.formatting.bibtex_tidy,
                -- b.formatting.cmakelang,
                -- b.formatting.jupytext,
                -- b.formatting.latexindent,
            },
        })

        -- Run format on <Leader>fm in normal mode
        -- Run format on <Leader>fM in visual mode


        vim.api.nvim_set_keymap("n", "<Leader>fm", ":lua vim.lsp.buf.format()<CR>",
            { noremap = true, silent = true, desc = "[F]or[M]at Document" })
        vim.api.nvim_set_keymap("v", "<Leader>fM", ":lua vim.lsp.buf.range_formatting()<CR>",
            { noremap = true, silent = true, desc = "[F]or[M]at Document" })
    end,
}
