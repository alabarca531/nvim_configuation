return {
  -- IPython Cell and Slime plugins
  {
    "hanschen/vim-ipython-cell",
    dependencies = { "jpalardy/vim-slime" },
    ft = "python", -- Only load for Python files
    config = function()
      -- Slime Configuration
      vim.g.slime_target = "tmux"
      vim.g.slime_python_ipython = 1
      vim.g.slime_default_config = {
        socket_name = vim.fn.split(vim.env.TMUX, ",")[1],
        target_pane = "{top-right}",
      }
      vim.g.slime_dont_ask_default = 1

      -- IPython Cell Key Mappings
      vim.keymap.set("n", "<Leader>s", ":SlimeSend1 ipython --matplotlib<CR>", { desc = "Start IPython" })
      vim.keymap.set("n", "<Leader>r", ":IPythonCellRun<CR>", { desc = "Run script" })
      vim.keymap.set("n", "<Leader>R", ":IPythonCellRunTime<CR>", { desc = "Run script with timing" })
      vim.keymap.set("n", "<Leader>c", ":IPythonCellExecuteCell<CR>", { desc = "Execute current cell" })
      vim.keymap.set("n", "<Leader>C", ":IPythonCellExecuteCellJump<CR>", { desc = "Execute cell and jump" })
      vim.keymap.set("n", "<Leader>l", ":IPythonCellClear<CR>", { desc = "Clear IPython screen" })
      vim.keymap.set("n", "<Leader>x", ":IPythonCellClose<CR>", { desc = "Close Matplotlib windows" })
      vim.keymap.set("n", "[c", ":IPythonCellPrevCell<CR>", { desc = "Previous cell header" })
      vim.keymap.set("n", "]c", ":IPythonCellNextCell<CR>", { desc = "Next cell header" })
      vim.keymap.set("n", "<Leader>h", "<Plug>SlimeLineSend", { desc = "Send current line to IPython" })
      vim.keymap.set("x", "<Leader>h", "<Plug>SlimeRegionSend", { desc = "Send selected text to IPython" })
      vim.keymap.set("n", "<Leader>p", ":IPythonCellPrevCommand<CR>", { desc = "Run previous command" })
      vim.keymap.set("n", "<Leader>Q", ":IPythonCellRestart<CR>", { desc = "Restart IPython" })
      vim.keymap.set("n", "<Leader>d", ":SlimeSend1 %debug<CR>", { desc = "Start debug mode" })
      vim.keymap.set("n", "<Leader>q", ":SlimeSend1 exit<CR>", { desc = "Exit debug/IPython" })
      vim.keymap.set("n", "<F9>", ":IPythonCellInsertAbove<CR>a", { desc = "Insert cell header above" })
      vim.keymap.set("n", "<F10>", ":IPythonCellInsertBelow<CR>a", { desc = "Insert cell header below" })
      vim.keymap.set("i", "<F9>", "<C-o>:IPythonCellInsertAbove<CR>", { desc = "Insert cell header above (insert mode)" })
      vim.keymap.set("i", "<F10>", "<C-o>:IPythonCellInsertBelow<CR>", { desc = "Insert cell header below (insert mode)" })
    end,
  },
}
