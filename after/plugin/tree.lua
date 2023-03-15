vim.opt.termguicolors = true
local NT = require("nvim-tree")

NT.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        -- "-" is dir_up
        {key = "-", action = "dir_up"}, {key = "+", action = "cd"}
      }
    }
  },
  renderer = {group_empty = true},
  filters = {dotfiles = true}
})

-- Add keymap to toggle nvim-tree
vim.keymap.set("n", "<leader>tt", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>")
vim.keymap.set("n", "<leader>td", ":NvimTreeToggle<CR>")

-- add keymap to go back to last buffer
vim.keymap.set("n", "<leader>bb", ":b#<CR>")
