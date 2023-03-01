
function ColorMyPencils(color)
	color = color or "rose-pine"
    -- color = color or "nordic"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

-- Color copilot autonomplete color is cyan 
vim.cmd[[ 
    highlight CopilotSuggestion ctermfg=37   guifg=#00afaf 
    highlight CopilotSuggestionSelected guifg=#555555 ctermfg=8
]]
-- Color tabnine autocomplete color is yellow 
vim.cmd[[ 
    hi TabNinePopup ctermfg=3
]]

