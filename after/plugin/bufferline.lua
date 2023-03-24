local BL = require("bufferline")

-- enable mousemovement

BL.setup({
  options = {
    mode = 'buffers',
    number_style = "superscript",
    indicator_style = 'underline',
    color_icon = true,
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " " or (e == "warning" and "" or "")
        s = s .. n .. sym
      end
      return s
    end,
    offsets = {
      {filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left"}
    },
    color_icons = true,
    show_buffer_close_icon = true,
    show_buffer_default_icon = true,
    separator_style = "slope",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    hover = {enabled = true, delay = 200, reveal = {'close'}}
  }
})
