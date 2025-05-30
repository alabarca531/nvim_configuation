local lsp = require("lsp-zero")


require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright" },
    autoname_install = true,
})

lsp.preset("recommended")

lsp.nvim_workspace({ library = vim.api.nvim_get_runtime_file("", true) })
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil

lsp.setup_nvim_cmp({ mapping = cmp_mappings })

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = { error = "E", warn = "W", hint = "H", info = "I" },
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }
    -- go to definition
    vim.keymap.set("n", "gd", function()
        vim.lsp.buf.definition()
    end, opts)
    -- go to declaration
    vim.keymap.set("n", "K", function()
        vim.lsp.buf.hover()
    end, opts)
    -- go to type definition
    vim.keymap.set("n", "<leader>vws", function()
        vim.lsp.buf.workspace_symbol()
    end, opts)
    -- go to implementation
    vim.keymap.set("n", "<leader>vd", function()
        vim.diagnostic.open_float()
    end, opts)
    -- go to references
    -- vim.keymap.set("n", "[d", function()
    --   vim.diagnostic.goto_next()
    -- end, opts)
    -- vim.keymap.set("n", "]d", function()
    --   vim.diagnostic.goto_prev()
    -- end, opts)
    vim.keymap.set("n", "<leader>vca", function()
        vim.lsp.buf.code_action()
    end, opts)
    vim.keymap.set("n", "<leader>vrr", function()
        vim.lsp.buf.references()
    end, opts)
    vim.keymap.set("n", "<leader>vrn", function()
        vim.lsp.buf.rename()
    end, opts)
    vim.keymap.set("i", "<C-h>", function()
        vim.lsp.buf.signature_help()
    end, opts)
end)

lsp.setup()

vim.diagnostic.config({ virtual_text = true })
-- vim.diagnostic.config({virtual_lines = true})

-- Press <leader>le to show the list of errors
vim.keymap.set("n", "<leader>le", function()
    vim.diagnostic.setqflist()
end, { noremap = true, silent = true })
