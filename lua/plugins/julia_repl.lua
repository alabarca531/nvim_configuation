return {
    "mroavi/vim-julia-cell",
    dependencies = { "jpalardy/vim-slime" },
    ft = "julia",     -- Only load for Python files
    config = function()
        -- Slime Configuration
        vim.g.slime_target = "tmux"
        vim.g.slime_python_ipython = 1
        vim.g.slime_default_config = {
            socket_name = "default",
            target_pane = "{right-of}",
        }
        vim.g.slime_dont_ask_default = 1

        -- Julia Cell Key Mappings
        vim.keymap.set("n", "<Leader>r", ":JuliaCellRun<CR>", { desc = "Run script" })
        vim.keymap.set("n", "<Leader>c", ":JuliaCellExecuteCell<CR>", { desc = "Execute current cell" })
        vim.keymap.set("n", "<Leader>C", ":JuliaCellExecuteCellJump<CR>", { desc = "Execute cell and jump" })
        vim.keymap.set("n", "<Leader>l", ":JuliaCellClear<CR>", { desc = "Clear IPython screen" })
        vim.keymap.set("n", "<Leader>e", "<Plug>SlimeLineSend", { desc = "Send line to IPython" })
    end,
}
