local function lsp_status()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
    local clients = vim.lsp.get_clients()
    if next(clients) == nil then
        return msg
    end
    -- If multiple clients are available, put all names into a string and return
    -- that string
    -- local client_names = {}
    -- for _, client in ipairs(clients) do
    --     table.insert(client_names, client.name)
    -- end
    -- return table.concat(client_names, ', ')
    -- OR return the client that is dealing with the current buffer
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes 
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    -- if nothing is returned for filetype, return the first client
    return clients[1].name
    -- return msg
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = true,
        refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename', lsp_status },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = {
            {
                'buffers',
                show_filename_only = true, -- Shows shortened relative path when set to false.
                hide_filename_extension = true, -- Hide filename extension when set to true.
                show_modified_status = true, -- Shows indicator when the buffer is modified.

                mode = 4,             -- 0: Shows buffer name
                --           -- 1: Shows buffer index
                --           -- 2: Shows buffer name + buffer index
                --           -- 3: Shows buffer number
                --           -- 4: Shows buffer name + buffer number
                --
                max_length = vim.o.columns * 1 / 3, -- Maximum width of buffers component,
                --                                     -- it can also be a function that returns
                --                                     -- the value of `max_length` dynamically.
                filetype_names = {
                    TelescopePrompt = 'Telescope',
                    dashboard = 'Dashboard',
                    packer = 'Packer',
                    fzf = 'FZF',
                    alpha = 'Alpha'
                }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
                --
                -- -- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
                use_mode_colors = false,
                --
                -- buffers_color = {
                --   -- Same values as the general color option can be used here.
                --   active = 'lualine_{section}_normal',     -- Color for active buffer.
                --   inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
                -- },
                --
                symbols = {
                    modified = ' ●', -- Text to show when the buffer is modified
                    alternate_file = '#', -- Text to show to identify the alternate file
                    directory = '', -- Text to show when the buffer is a directory
                },
            } },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = { '' },
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
