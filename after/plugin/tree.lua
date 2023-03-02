require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Add keymap to toggle nvim-tree
vim.keymap.set("n", "<leader>tt", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>")
vim.keymap.set("n", "<leader>td", ":NvimTreeToggle<CR>")

-- add keymap to go back to last buffer 
vim.keymap.set("n", "<leader>bb", ":b#<CR>")
