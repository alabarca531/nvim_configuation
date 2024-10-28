-- Neovim Configuration Init File
-- Author: AJ La Barca
--
-- This file is the entry point for the Neovim configuration.

-- Check if running inside VSCode

if vim.g.vscode then
    -- load no plugins
else
    -- Load the configuration otherwise
    require("alabarca.init")
end
