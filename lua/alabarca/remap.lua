vim.g.mapleader = " "

-- Set <leader>pv to open Ex command window (not used -- use NvimTree instead)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted lines up and down using J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move current line up using J
vim.keymap.set("n", "J", "mzJ`z")

-- Move current line up and down using J and K
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Copy and paste without yanking
vim.keymap.set("x", "<leader>p", '"_DP')

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Delete without yanking
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Set <leader>dd to close current buffer and open previous buffer
vim.keymap.set("n", "<leader>dd", ":bp<bar>bd#<CR>")

-- Set <leader>fm to format call LspZeroFormat
