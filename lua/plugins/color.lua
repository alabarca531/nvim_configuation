function ColorMyPencils(color)
	-- color = color or "material"
    -- color = color or "nightfox"
    -- color = color or "tokyonight"
    -- color = color or "onedark"
    -- color = color or "gruvbox"
    color = color or "everforest"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    -- "navarasu/onedark.nvim",
    -- "folke/tokyonight.nvim",
    -- "EdenEast/nightfox.nvim",
    -- "sainnhe/gruvbox-material",
    -- "gruvbox-community/gruvbox",
     "neanias/everforest-nvim",
    -- Matrial theme
    -- "marko-cerovac/material.nvim",

    config = function()
        ColorMyPencils()
    end
}
