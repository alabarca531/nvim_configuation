-- Neovim Configuration Init File
-- Author: AJ La Barca
--
-- This file is the entry point for the Neovim configuration.

-- Check if running inside VSCode
if vim.g.vscode then
    -- load no plugins
else
    -- Load the configuration otherwise
    require("alabarca.remap")
    require("alabarca.set")

    local lazypath = vim.fn.stdpath('data') .. "/lazy/lazy.nvim"
    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
            "git", "clone",
            "--fitler=blob:none",
            "https://github.com/folke/lazy.nvim.git", "--branch=stable", --latest stable release
            lazypath,
        })
    end
    vim.opt.rtp:prepend(lazypath)

    -- All the plugins are in the lua/plugins and after/plugin directory
    require("lazy").setup('plugins')
end
