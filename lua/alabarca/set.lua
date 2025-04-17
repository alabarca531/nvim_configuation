vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.showbreak = "↪"
vim.opt.textwidth = 80
vim.opt.wrapmargin = 80

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Set Spellcheck 
vim.opt.spell = true
vim.opt.spelllang = "en_us"
-- Set directory for spell files
vim.opt.spellfile = os.getenv("HOME") .. "/.config/nvim/spell/en.utf-8.add"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.g.mapleader = " "

-- Set vsplit to right, split to bottom 
vim.opt.splitright = true
vim.opt.splitbelow = true


