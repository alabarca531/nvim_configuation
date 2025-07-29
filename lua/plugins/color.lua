-- Global function to change colorschemes
function ColorMyPencils(color)
	-- color = color or "material"
	-- color = color or "nightfox"
	-- color = color or "tokyonight"
	-- color = color or "onedark"
	-- color = color or "gruvbox"
	-- color = color or "everforest"
	color = color or "monokai-pro"
	vim.cmd.colorscheme(color)

	-- Optional: Make background transparent
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Make function globally available
_G.ColorMyPencils = ColorMyPencils

return {
	-- Alternative colorschemes (commented out, uncomment to use)
	-- "navarasu/onedark.nvim",
	-- "folke/tokyonight.nvim",
	-- "EdenEast/nightfox.nvim",
	-- "sainnhe/gruvbox-material",
	-- "gruvbox-community/gruvbox",
	-- "neanias/everforest-nvim",
	-- "marko-cerovac/material.nvim",

	-- Main colorscheme is now handled in monokai.lua
	-- This file can be used for backup colorschemes or color utilities
}
