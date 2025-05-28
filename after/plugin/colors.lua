-- Default options
-- require('nightfox').setup({
--   options = {
--     -- Compiled file's destination location
--     compile_path = vim.fn.stdpath("cache") .. "/nightfox",
--     compile_file_suffix = "_compiled", -- Compiled file suffix
--     transparent = false,     -- Disable setting background
--     terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = false,    -- Non focused panes set to alternative background
--     module_default = true,   -- Default enable value for modules
--     styles = {               -- Style to be applied to different syntax groups
--       comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
--       conditionals = "NONE",
--       constants = "NONE",
--       functions = "NONE",
--       keywords = "NONE",
--       numbers = "NONE",
--       operators = "NONE",
--       strings = "NONE",
--       types = "NONE",
--       variables = "NONE",
--     },
--     inverse = {             -- Inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     modules = {             -- List of various plugins and additional options
--       -- ...
--     },
--   },
--   palettes = {},
--   specs = {},
--   groups = {},
-- })

-- highlight the current line and column 
vim.api.nvim_command('autocmd WinEnter * set cursorline')

-- require('material').setup({
--
--     contrast = {
--         terminal = true, -- Enable contrast for the built-in terminal
--         sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
--         floating_windows = true, -- Enable contrast for floating windows
--         cursor_line = true, -- Enable darker background for the cursor line
--         non_current_windows = false, -- Enable darker background for non-current windows
--         filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
--     },
--
--     styles = { -- Give comments style such as bold, italic, underline etc.
--         comments = { --[[ italic = true ]] },
--         strings = { --[[ bold = true ]] },
--         keywords = { --[[ underline = true ]] },
--         functions = { --[[ bold = true, undercurl = true ]] },
--         variables = {},
--         operators = {},
--         types = {},
--     },
--
--     plugins = { -- Uncomment the plugins that you use to highlight them
--         -- Available plugins:
--         -- "dap",
--         -- "dashboard",
--         -- "gitsigns",
--         -- "hop",
--         -- "indent-blankline",
--         -- "lspsaga",
--         -- "mini",
--         -- "neogit",
--         -- "neorg",
--         -- "nvim-cmp",
--         -- "nvim-navic",
--         "nvim-tree",
--         -- "nvim-web-devicons",
--         -- "sneak",
--         "telescope",
--         "trouble",
--         "which-key",
--     },
--
--     disable = {
--         colored_cursor = false, -- Disable the colored cursor
--         borders = false, -- Disable borders between verticaly split windows
--         background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
--         term_colors = false, -- Prevent the theme from setting terminal colors
--         eob_lines = false -- Hide the end-of-buffer lines
--     },
--
--     high_visibility = {
--         lighter = false, -- Enable higher contrast text for lighter style
--         darker = false -- Enable higher contrast text for darker style
--     },
--
--     lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
--
--     async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
--
--     custom_colors = nil, -- If you want to everride the default colors, set this to a function
--
--     custom_highlights = {}, -- Overwrite highlights with your own
-- })


-- Color copilot autonomplete color is cyan
vim.cmd [[
    highlight CopilotSuggestion ctermfg=37   guifg=#00afaf
    highlight CopilotSuggestionSelected guifg=#555555 ctermfg=8
]]



ColorMyPencils()

 -- set shortcut cmd-shift-u to refresh color 
-- vim.api.nvim_set_keymap('n', '<D-u>', ':lua ColorMyPencils()<CR>', {noremap = true, silent = true})

