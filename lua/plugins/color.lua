function ColorMyPencils(color)
	-- color = color or "material"
    -- color = color or "nightfox"
    -- color = color or "tokyonight"
    color = color or "onedark"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    "navarasu/onedark.nvim",
    config = function()
        ColorMyPencils()
    end
}
